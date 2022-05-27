class ChangeNullForCocktailBars < ActiveRecord::Migration[6.1]
  def change
    change_column_null :cocktails, :bar_id, true
  end
end
