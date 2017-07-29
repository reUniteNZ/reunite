class Plan < ApplicationRecord
  has_many :plans_users, class_name: PlansUsers
  has_many :users, through: :plans_users

  has_many :meet_locations
  has_many :start_locations

  def lat
    start_locations.first.lat || 0
  end

  def long
    start_locations.first.long || 0
  end
end
