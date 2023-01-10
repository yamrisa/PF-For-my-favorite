class CreateOutputs < ActiveRecord::Migration[6.1]
  def change
    create_table :outputs do |t|
      t.text :post, null: false
      t.timestamps
    end
  end
end
