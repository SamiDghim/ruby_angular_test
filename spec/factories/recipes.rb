require 'faker'
# spec/factories/recipes.rb 
FactoryGirl.define do 
      
    factory :recipes do
        sequence(:title) { |n| "Test recipe#{n}" }
        sequence(:description) { |n| "description#{n}" }
        rating 2
        isfavorite true
    end
     
    factory :recipe do
        title {Faker::Name.title }
        description "disc"
        rating {Faker::Number.between(1, 5)}
        isfavorite false
        user
    end
end