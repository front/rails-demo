class TasksController < ApplicationController
  def create
    @strategy = Strategy.find(params[:strategy_id])
    @goal = @strategy.goals.find(params[:goal_id])
    @task = @goal.tasks.create(params[:task])
    redirect_to strategy_path(@strategy)
  end
end
