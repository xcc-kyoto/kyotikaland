class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.string :body
      t.references :landmark

      t.timestamps
    end
    add_index :keywords, :landmark_id
  end
end
