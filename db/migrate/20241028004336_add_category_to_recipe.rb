class AddCategoryToRecipe < ActiveRecord::Migration[8.1]
  def change
    add_column :recipes, :category, :string, null: true
  end
end
