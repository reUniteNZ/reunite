class PlanController < ApplicationController
  def index
    @plans = current_user.plans
  end

  def show
    if params[:id].to_s == "plan_add" then
      print("WAAAAAAADA")
      user = current_user
      z = PlansUsers.create(user_id: user.id, plan_id: params[:pid])
      # redirect_to Plan.find(params[:id])
      @plan = z.plan
      byebug
      redirect_to Plan.find(1)
    else
      print("NORMA")
      @plan = Plan.find_by_id(params[:id])
    end
  end

  def plan_add

  end
end
