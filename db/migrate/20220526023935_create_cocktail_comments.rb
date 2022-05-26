class CreateCocktailComments < ActiveRecord::Migration[6.1]
  def change
    create_table :cocktail_comments do |t|
      t.references :cocktail, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :body, null: false

      t.timestamps
    end
  end
end
