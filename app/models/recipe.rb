class Recipe < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  belongs_to :user



  #select recipes from database where title and description look like the searched recipe
  def self.search(search)
    where(' LIKE ?', "%#{search}%")
    where('description LIKE ? OR title LIKE ? ', "%#{search}%", "%#{search}%")

  end


end
