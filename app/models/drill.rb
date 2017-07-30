class Drill < ApplicationRecord
  belongs_to :plan
  has_many :drill_users
  has_many :drill_users, class_name: DrillUsers
  has_many :users, through: :drill_users
end
