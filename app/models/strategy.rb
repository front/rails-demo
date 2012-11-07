class Strategy < ActiveRecord::Base
  attr_accessible :title, :vision

  has_many :goals
end
