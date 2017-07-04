class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
  create_table "recipes" do |t|
    t.text "ingredients"
    t.text "procedure"
    t.string "item"
  end


end
