class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :skill_name, presence: true
  validates :price_per_hour, presence: true
  validates :availability, presence: true

  include PgSearch::Model
  pg_search_scope :search_for_skills,
    against: [ :skill_name ],
    using: {
    tsearch: { prefix: true }
    }
end
