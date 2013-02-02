class Landmark < ActiveRecord::Base
  attr_accessible :answer1, :answer2, :answer3, :correct, :latitude, :longitude, :name, :question, :url, :author
  validates :correct, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 3 }
  has_many :keywords
  has_many :taggings
  has_many :tags, through: :taggings
end
