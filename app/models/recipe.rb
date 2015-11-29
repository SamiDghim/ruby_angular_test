class Recipe < ActiveRecord::Base

  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  belongs_to :user
  mount_uploader :image, ImageUploader


  #select recipes from database where title and description look like the searched recipe
  def self.search(search)
    where('description LIKE ? OR title LIKE ? ', "%#{search}%", "%#{search}%")
  end
  #return
  def self.userRecipes(user_id)
    User.find(user_id).recipes
  end

  #Override the as_json method to include the user and list of ingredients:
  def as_json(options = {})
    super(options.merge(include: :user))
    super(:methods => :list_recipe_ingredients)

  end
#return list of ingredients
  def list_recipe_ingredients
    recipe_ingredients.all
  end


end
