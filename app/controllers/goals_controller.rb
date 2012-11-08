class GoalsController < ApplicationController
  def create
    @strategy = Strategy.find(params[:strategy_id])
    @goal = @strategy.goals.create(params[:goal])
    redirect_to strategy_path(@strategy)
  end

  def edit
    @strategy = Strategy.find(params[:strategy_id])
    @goal = @strategy.goals.create(params[:goal])
  end

  def destroy
    @strategy = Strategy.find(params[:strategy_id])
    @goal = @strategy.goals.find(params[:id])
    @goal.destroy
    redirect_to strategy_path(@strategy)
  end
end
