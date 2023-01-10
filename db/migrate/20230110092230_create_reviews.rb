class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false,foreign_key: true
      t.integer :output_id, null: false,foreign_key: true
      t.integer :rate, null: false
      t.timestamps
    end
  end
end
