class GoalsController < ApplicationController
  def create
    @strategy = Strategy.find(params[:strategy_id])
    @goal = @strategy.goals.create(params[:goal])
    redirect_to strategy_path(@strategy)
  end

  def edit
    @strategy = Strategy.find(params[:strategy_id])
    @goal = @strategy.goals.find(params[:id])
  end

  def destroy
    @strategy = Strategy.find(params[:strategy_id])
    @goal = @strategy.goals.find(params[:id])
    @goal.destroy
    redirect_to strategy_path(@strategy)
  end

  def update
    @strategy = Strategy.find(params[:strategy_id])
    @goal = @strategy.goals.find(params[:id])

    respond_to do |format|
      if @goal.update_attributes(params[:goal])
        format.html { redirect_to @strategy, notice: 'Goal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @strategy.errors, status: :unprocessable_entity }
      end
    end
  end
end
