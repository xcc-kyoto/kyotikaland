class Landmark < ActiveRecord::Base
  attr_accessible :question, :answer1, :answer2, :answer3, :correct,
    :name, :latitude, :longitude, :url, :tag_tokens, :author
  attr_reader :tag_tokens

  validates :correct, numericality: { greater_than_or_equal_to: 1,
                                      less_than_or_equal_to: 3 }

  has_many :keywords
  has_many :taggings
  has_many :tags, through: :taggings

  paginates_per 20

  def self.search(search)
    if search
      q = "%#{search}%"
      self.where("name like ? or author like ?", q, q)
    else
      self
    end
  end

  def tag_tokens=(tokens)
    self.tag_ids = Tag.ids_from_tokens(tokens)
  end

  def self.available_locations
    self.where("latitude IS NOT NULL AND longitude IS NOT NULL")
  end
end
