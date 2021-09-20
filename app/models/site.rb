class Site < ApplicationRecord
  belongs_to :portfolio
  has_many :spaces

  validates :spaces_available, presence: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true

  def sqft_statistics(id)
    {
      site_id: self.id,
      name: self.name,
      total_spaces: self.spaces.count,
      total_sqft: self.site_total_sqft(id),
      average_sqft: self.site_average_sqft(id).round(2)
    }
  end

  def site_total_sqft(id)
    site = Site.find(id)
    site.spaces.sum(:square_footage)
  end

  def site_average_sqft(id)
    site = Site.find(id)
    total = site.spaces.sum(:square_footage)
    total / (site.spaces.count)
  end
end
