class RemovePhotoFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :photo ,:string
  end
end
