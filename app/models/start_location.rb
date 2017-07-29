class StartLocation < ApplicationRecord
  belongs_to :plan
  belongs_to :user

  validates :lat, presence: true
  validates :long, presence: true
  validates :name, presence: true
end
