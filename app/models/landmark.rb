class Landmark < ActiveRecord::Base
  attr_accessible :answer1, :answer2, :answer3, :correct, :latitude, :longitude, :name, :question, :url
  validates :correct, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 3 }
  has_many :keywords
end
