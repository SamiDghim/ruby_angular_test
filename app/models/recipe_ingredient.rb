class RecipeIngredient < ActiveRecord::Base
  belongs_to :recipe, :dependent => :destroy
  belongs_to :ingredient, :dependent => :destroy

#
  def as_json(options = {})
    super(:methods => :recipe_ingredient)
  end
  def recipe_ingredient
    self.ingredient
  end

end
