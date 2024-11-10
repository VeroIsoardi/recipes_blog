class AddCategoryToRecipe < ActiveRecord::Migration[8.0]
  def change
    add_column :recipes, :category, :string, null: true
  end
end
