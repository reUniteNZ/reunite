class PlanController < ApplicationController
  def index
    @plans = current_user.plans
  end

  def show
    @plan = Plan.find_by_id(params[:id])
  end
  
  def new
  end
end
