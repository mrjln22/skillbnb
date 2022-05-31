class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :skill_name, presence: true
  validates :price_per_hour, presence: true
  validates :availability, presence: true
end
