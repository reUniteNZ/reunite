class DrillUsers < ApplicationRecord
  belongs_to :user
  belongs_to :plan
end