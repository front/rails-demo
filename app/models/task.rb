class Task < ActiveRecord::Base
  belongs_to :goal
  attr_accessible :description, :duedate, :title

  validates :title,       :presence => true
  validates :description, :presence => true,
                          :length => { :minimum => 5 }
end
