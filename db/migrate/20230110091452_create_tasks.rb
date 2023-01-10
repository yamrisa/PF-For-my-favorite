class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.integer :list_id, null: false,foreign_key: true
      t.string :name, null: false
      t.timestamps
    end
  end
end
