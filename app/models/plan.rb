class Plan < ApplicationRecord
  has_many :plans_users, class_name: PlansUsers
  has_many :users, through: :plans_users

  has_many :meet_locations
end
