class CreateBars < ActiveRecord::Migration[6.1]
  def change
    create_table :bars do |t|
      t.string :bar_name, null: false, default: "Hole in the Wall"
      t.references :owner, null: false, foreign_key: { to_table: :users}
      t.string :about

      t.timestamps
    end
  end
end
