class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.integer :user_id, null: false,foreign_key: true
      t.string :goal, null: false
      t.text :relation, null: false
      t.text :routine, null: false
      t.timestamps
    end
  end
end
