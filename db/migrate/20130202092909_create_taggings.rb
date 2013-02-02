class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.references :landmark
      t.references :tag

      t.timestamps
    end
    add_index :taggings, :landmark_id
    add_index :taggings, :tag_id
  end
end
