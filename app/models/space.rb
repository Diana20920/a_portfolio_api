class Space < ApplicationRecord
  belongs_to :site

  validates :category, presence: true
  validates :vacant, presence: true
  validates :square_footage, presence: true
end
