class CreateTaggings < ActiveRecord::Migration[6.1]
  def change
    create_table :taggings do |t|
      t.integer :tag_id, null: false,foreign_key: true
      t.integer :output_id, null: false,foreign_key: true
      t.timestamps
    end
  end
end
