class KeywordToTag < ActiveRecord::Migration
  def up
    Keyword.all.each do |k|
      k.landmark.tags << Tag.find_or_create_by_name(k.body)
      k.save
    end
  end

  def down
  end
end
