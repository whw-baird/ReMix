class CreateBarflies < ActiveRecord::Migration[6.1]
  def change
    create_table :barflies do |t|
      t.references :bar, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :is_bartender, null: false, default: 0

      t.timestamps
    end
  end
end
