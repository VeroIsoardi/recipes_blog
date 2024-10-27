class CreateRecipes < ActiveRecord::Migration[8.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :ingredients
      t.string :steps

      t.timestamps
    end
  end
end
