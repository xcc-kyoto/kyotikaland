class AddAuthorColumnToLandmarks < ActiveRecord::Migration
  def change
    add_column :landmarks, :author, :string
  end
end
