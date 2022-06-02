class Entity < ApplicationRecord
  has_many :portfolios

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
end
