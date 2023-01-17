class CreateOutputs < ActiveRecord::Migration[6.1]
  def change
    create_table :outputs do |t|
      t.integer :user_id, null: false
      t.text :post, null: false
      t.timestamps
    end
  end
end
