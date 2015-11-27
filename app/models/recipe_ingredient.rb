class RecipeIngredient < ActiveRecord::Base
  belongs_to :recipe, :dependent => :destroy
  belongs_to :ingredient, :dependent => :destroy
end
