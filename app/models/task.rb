class Task < ActiveRecord::Base
  belongs_to :goal
  attr_accessible :description, :duedate, :title, :goal_id
end
