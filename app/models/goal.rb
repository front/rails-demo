class Goal < ActiveRecord::Base
  belongs_to :strategy
  attr_accessible :description, :title, :strategy_id
  has_many :actions
end
