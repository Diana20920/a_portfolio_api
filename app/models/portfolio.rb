class Portfolio < ApplicationRecord
  belongs_to :entity
  has_many :sites

  validates :region, presence: true
end
