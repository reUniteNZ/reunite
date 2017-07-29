class StartLocationController < ApplicationController

  def create
    x = params["start_location"]
    StartLocation.create(
    name: x["name"],
    description: x["description"],
    lat: x["lat"],
    long: x["long"],
    user_id: x["user_id"],
    plan_id: x["plan_id"]
    )
  end
end
