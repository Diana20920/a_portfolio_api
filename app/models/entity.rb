class Entity < ApplicationRecord
  has_many :portfolios

  validates :name, presence: true
  validates :address, presence: true
end
