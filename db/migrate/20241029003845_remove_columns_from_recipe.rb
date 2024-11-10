class RemoveColumnsFromRecipe < ActiveRecord::Migration[8.0]
  def change
    remove_column :recipes, :steps, :string
    remove_column :recipes, :ingredients, :string
  end
end
