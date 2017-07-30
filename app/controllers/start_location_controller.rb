class StartLocationController < ApplicationController
  def create
    x = params["start_location"]
     y= StartLocation.create(
    name: x["name"],
    description: x["description"],
    lat: x["lat"],
    long: x["long"],
    user_id: x["user_id"],
    plan_id: x["plan_id"]
    )
    redirect_to y.plan

  end
end
