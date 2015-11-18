
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
# create the list of recipes
Recipe.create(title:"recipe 1",description:"description for recipe 1",rating:1,isfavorite:true,photo:"no-photo",user:"user 1")
Recipe.create(title:"recipe 2",description:"description for recipe 2",rating:2,isfavorite:false,photo:"no-photo",user:"user 2")
Recipe.create(title:"recipe 3",description:"description for recipe 3",rating:3,isfavorite:true,photo:"no-photo",user:"user 3")
Recipe.create(title:"recipe 4",description:"description for recipe 4",rating:4,isfavorite:false,photo:"no-photo",user:"user 4")
Recipe.create(title:"recipe 5",description:"description for recipe 5",rating:5,isfavorite:true,photo:"no-photo",user:"user 5")
Recipe.create(title:"recipe 6",description:"description for recipe 6",rating:1,isfavorite:false,photo:"no-photo",user:"user 6")
Recipe.create(title:"recipe 7",description:"description for recipe 7",rating:2,isfavorite:true,photo:"no-photo",user:"user 7")
Recipe.create(title:"recipe 8",description:"description for recipe 8",rating:3,isfavorite:false,photo:"no-photo",user:"user 8")
Recipe.create(title:"recipe 9",description:"description for recipe 9",rating:4,isfavorite:true,photo:"no-photo",user:"user 9")
Recipe.create(title:"recipe 10",description:"description for recipe 10",rating:5,isfavorite:false,photo:"no-photo",user:"user 10")

 

