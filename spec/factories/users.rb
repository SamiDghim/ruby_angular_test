require 'faker'
# spec/factories/users.rb 
FactoryGirl.define do 
# recipe factory with a `belongs_to` association for the user

    factory :user_recipe do
        title {Faker::Name.title }
        description "disc"
        rating {Faker::Number.between(1, 5)}
        isfavorite false
        photo "no"
        user
    end
    fake_password = Faker::Lorem.words(10)
    factory :user do
        email { Faker::Internet.email }
        password  fake_password
        name {Faker::Name.name }        
        # user_with_recipes will create recipe data after the user has been created
         
        factory :user_with_recipes do
          # recipes_count is declared as a transient attribute and available in
          # attributes on the factory, as well as the callback via the evaluator
          transient do
            recipes_count 5
          end

          # the after(:create) yields two values; the user instance itself and the
          # evaluator, which stores all values from the factory, including transient
          # attributes; `create_list`'s second argument is the number of records
          # to create and we make sure the user is associated properly to the post
          after(:create) do |user, evaluator|
            create_list(:user_recipe, evaluator.recipes_count, user: user)
          end
        end
       
    end




end