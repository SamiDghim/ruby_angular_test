class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.integer :rating
      t.boolean :isfavorite
      t.string :photo
      t.string :user
      t.timestamps null: false
    end
  end
end
