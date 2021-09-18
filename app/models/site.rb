class Site < ApplicationRecord
  belongs_to :portfolio
  has_many :spaces

  validates :spaces_available, presence: true
  validates :total_sqft, presence: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true
end
