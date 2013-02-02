class Tagging < ActiveRecord::Base
  belongs_to :landmark
  belongs_to :tag
  # attr_accessible :title, :body
end
