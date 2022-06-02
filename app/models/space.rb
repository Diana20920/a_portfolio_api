class Space < ApplicationRecord
  belongs_to :site

  validates :category, presence: true
  validates :vacant, presence: true
  validates :sqft, presence: true
end
