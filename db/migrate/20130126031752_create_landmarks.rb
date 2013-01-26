class CreateLandmarks < ActiveRecord::Migration
  def change
    create_table :landmarks do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :url
      t.string :question
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.integer :correct

      t.timestamps
    end
  end
end
