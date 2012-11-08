class Strategy < ActiveRecord::Base
  attr_accessible :description, :title

  validates :title,       :presence => true
  validates :description, :presence => true,
                          :length => { :minimum => 5 }

  has_many :goals, :dependent => :destroy
end
