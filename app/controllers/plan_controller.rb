class PlanController < ApplicationController
  def index
    @plans = current_user.plans
  end

  def show
    @plan = Plan.find(params[:id])
  end
end
