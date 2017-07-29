class DrillController < ApplicationController
  def index
    @plans = current_user.plans
  end

  def show
    @drill = Drill.find(params[:id])
    @plan = Plan.find_by_id(@drill.plan_id)
  end

  def create
    drill = Drill.create(plan_id: params[:plan_id], start_time: DateTime.current);
    redirect_to drill_show_path(id: drill.id)
  end
end
