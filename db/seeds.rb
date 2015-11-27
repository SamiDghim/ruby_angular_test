# Create users
puts 'Create users '
admin = User.create(email: 'admin@example.com',password:'password',name:'admin')
user1 = User.create(email: 'user1@example.com',password:'password',name:'user1')
user2 = User.create(email: 'user2@example.com',password:'password',name:'user2')
user3 = User.create(email: 'user3@example.com',password:'password',name:'user3')
user4 = User.create(email: 'user4@example.com',password:'password',name:'user4')
=begin

User.all.each do |user|
  10.times { |i| user.create(email: "user#{i}@example.com",password:"password#{i}",name:"user#{i}") }
end
=end



# create a list of ingredients
puts 'Create a list of ingredients '
ingredient1=Ingredient.create(name:'sugar')
ingredient2=Ingredient.create(name:'salt')
ingredient3=Ingredient.create(name:'eggs')
ingredient4=Ingredient.create(name:'peppers')
ingredient5=Ingredient.create(name:'olive oil')

# create the list of recipes
puts 'Create a list of recipes ='

puts 'Recipe 1 :'
recipe1 = Recipe.create(title: 'recipe1',description:'description for recipe 1',rating:1,isfavorite:true,photo:'no-photo')
puts 'add ingredients '
recipe1.recipe_ingredients.create(ingredient: ingredient1)
recipe1.recipe_ingredients.create(ingredient: ingredient2)
recipe1.recipe_ingredients.create(ingredient: ingredient3)
puts 'Recipe 2 :'
recipe2 =Recipe.create(title:'recipe 2',description:'description for recipe 2',rating:2,isfavorite:false,photo:'no-photo')
puts 'add ingredients '
recipe2.recipe_ingredients.create(ingredient: ingredient1)
recipe2.recipe_ingredients.create(ingredient: ingredient4)
recipe2.recipe_ingredients.create(ingredient: ingredient5)

puts 'Recipe 3 :'
recipe3 =Recipe.create(title:'recipe 3',description:'description for recipe 3',rating:3,isfavorite:true,photo:'no-photo')
puts 'add ingredients '
recipe3.recipe_ingredients.create(ingredient: ingredient3)
recipe3.recipe_ingredients.create(ingredient: ingredient3)
recipe3.recipe_ingredients.create(ingredient: ingredient4)

puts 'Recipe 4 :'
recipe4 =Recipe.create(title:'recipe 4',description:'description for recipe 4',rating:4,isfavorite:false,photo:'no-photo')
puts 'add ingredients '
recipe4.recipe_ingredients.create(ingredient: ingredient3)
recipe4.recipe_ingredients.create(ingredient: ingredient4)
recipe4.recipe_ingredients.create(ingredient: ingredient5)

puts 'Recipe 5 :'
recipe5 =Recipe.create(title:'recipe 5',description:'description for recipe 5',rating:5,isfavorite:true,photo:'no-photo')
puts 'add ingredients '
recipe5.recipe_ingredients.create(ingredient: ingredient1)
recipe5.recipe_ingredients.create(ingredient: ingredient4)
recipe5.recipe_ingredients.create(ingredient: ingredient3)

puts 'Recipe 6 :'
recipe6 =Recipe.create(title:'recipe 6',description:'description for recipe 6',rating:1,isfavorite:false,photo:'no-photo')
puts 'add ingredients '
recipe6.recipe_ingredients.create(ingredient: ingredient1)
recipe6.recipe_ingredients.create(ingredient: ingredient4)
recipe6.recipe_ingredients.create(ingredient: ingredient5)

puts 'Recipe 7 :'
recipe7 =Recipe.create(title:'recipe 7',description:'description for recipe 7',rating:2,isfavorite:true,photo:'no-photo')
puts 'add ingredients '
recipe7.recipe_ingredients.create(ingredient: ingredient1)
recipe7.recipe_ingredients.create(ingredient: ingredient4)
recipe7.recipe_ingredients.create(ingredient: ingredient5)

puts 'Recipe 8 :'
recipe8 =Recipe.create(title:'recipe 8',description:'description for recipe 8',rating:3,isfavorite:false,photo:'no-photo')
puts 'add ingredients '
recipe8.recipe_ingredients.create(ingredient: ingredient1)
recipe8.recipe_ingredients.create(ingredient: ingredient2)
recipe8.recipe_ingredients.create(ingredient: ingredient4)

puts 'Recipe 9 :'
recipe9 =Recipe.create(title:'recipe 9',description:'description for recipe 9',rating:4,isfavorite:true,photo:'no-photo')
puts 'add ingredients '
recipe9.recipe_ingredients.create(ingredient: ingredient1)
recipe9.recipe_ingredients.create(ingredient: ingredient2)
recipe9.recipe_ingredients.create(ingredient: ingredient4)

puts 'Recipe 10 :'
recipe10 =Recipe.create(title:'recipe 10',description:'description for recipe 10',rating:5,isfavorite:false,photo:'no-photo')
puts 'add ingredients '
recipe10.recipe_ingredients.create(ingredient: ingredient1)
recipe10.recipe_ingredients.create(ingredient: ingredient2)
recipe10.recipe_ingredients.create(ingredient: ingredient4)

#add recipes
puts 'add recipes to users'
admin.recipes << recipe1
admin.recipes << recipe2

user1.recipes << recipe3
user1.recipes << recipe4

user2.recipes << recipe5
user2.recipes << recipe6

user3.recipes << recipe7
user3.recipes << recipe8

user4.recipes << recipe9
user4.recipes << recipe10