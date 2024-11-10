class CreateRecipes < ActiveRecord::Migration[8.0]
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.string :ingredients
      t.string :steps

      t.timestamps
    end
  end
end
