class Keyword < ActiveRecord::Base
  belongs_to :landmark
  attr_accessible :body
end
