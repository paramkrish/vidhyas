class AddItemToRecipe < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :item, :string
  end
end
