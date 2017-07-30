class Plan < ApplicationRecord
  has_many :plans_users, class_name: PlansUsers
  has_many :users, through: :plans_users

  has_many :meet_locations
  has_many :start_locations

  def lat
    if(start_locations.first.nil?)
      -41.3
    else
      start_locations.last.lat
    end
  end

  def long
    if(start_locations.last.nil?)
      174.7
    else
      start_locations.last.long || 0
    end
  end
end
