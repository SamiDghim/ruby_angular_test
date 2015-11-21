class RemoveUserFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :user, :string
  end
end
