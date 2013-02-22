class AddHiraganaToLandmark < ActiveRecord::Migration
  def change
    add_column :landmarks, :hiragana, :string
  end
end
