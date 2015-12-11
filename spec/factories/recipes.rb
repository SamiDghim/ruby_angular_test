require 'faker'
# spec/factories/recipes.rb 
FactoryGirl.define do 
=begin     
    factory :recipes do
              
        sequence(:title) { |n| "Test recipe#{n}" }
        sequence(:description) { |n| "description#{n}" }
        rating 2
        isfavorite true
        sequence(:photo) { |n| "nooo-#{n}" }
    end
=end    
    factory :recipe do
        title {Faker::Name.title }
        description "disc"
        rating {Faker::Number.between(1, 5)}
        isfavorite false
        photo "no"
        user
    end
 
end