class CreateCocktails < ActiveRecord::Migration[6.1]
  def change
    create_table :cocktails do |t|
      t.references :user, null: false, foreign_key: true
      t.references :bar, foreign_key: true
      t.string :name, null: false, default: "My Cocktail"
      t.string :recipe

      t.timestamps
    end
  end
end
