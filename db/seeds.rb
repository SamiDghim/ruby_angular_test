
#  Create a user
puts 'Create a user '
User.first_or_create( email: 'admin@example.com',password:'password',name:'admin')
User.first_or_create(email: 'user1@example.com',password:'password',name:'user1')
User.first_or_create(email: 'user2@example.com',password:'password',name:'user2')
User.first_or_create(email: 'user3@example.com',password:'password',name:'user3')
User.first_or_create(email: 'user4@example.com',password:'password',name:'user5')
# create a list of ingredients
puts 'Create a list of ingredients '
Ingredient.create(name:'sugar')
Ingredient.create(name:'salt')
Ingredient.create(name:'eggs')
Ingredient.create(name:'peppers')
Ingredient.create(name:'olive oil')
 

