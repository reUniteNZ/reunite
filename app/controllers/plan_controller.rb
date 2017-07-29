class PlanController < ApplicationController
  def index
  end

  def show
    @plan = Plan.find(params[:id])
  end
end
