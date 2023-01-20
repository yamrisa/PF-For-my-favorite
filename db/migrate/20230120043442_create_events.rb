class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.integer :user_id, null: false,foreign_key: true
      t.string :title
      t.datetime :start_time
      t.timestamps
    end
  end
end
