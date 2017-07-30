class MeetLocationController < ApplicationController
  def create
    x = params["meet_location"]
    y = MeetLocation.create(
    name: x["name"],
    description: x["description"],
    lat: x["lat"],
    long: x["long"],
    plan_id: x["plan_id"]
    )
    redirect_to y.plan
  end
end
