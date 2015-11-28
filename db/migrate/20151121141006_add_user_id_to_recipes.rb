class AddUserIdToRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :user_id, index: true, foreign_key: true
  end
end
