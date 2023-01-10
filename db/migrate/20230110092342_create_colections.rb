class CreateColections < ActiveRecord::Migration[6.1]
  def change
    create_table :colections do |t|
      t.integer :user_id, null: false,foreign_key: true
      t.integer :output_id, null: false,foreign_key: true
      t.integer :bookmark, null: false
      t.timestamps
    end
  end
end
