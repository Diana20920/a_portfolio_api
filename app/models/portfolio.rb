class Portfolio < ApplicationRecord
  belongs_to :entity
  has_many :sites
  has_many :spaces, through: :sites

  validates :region, presence: true

  def sqft_statistics(id)
    {
      portfolio_id: self.id,
      region: self.region,
      total_spaces: self.spaces.count,
      total_sqft: self.portfolio_total_sqft(id),
      average_sqft: self.portfolio_average_sqft(id).round(2)
    }
  end

  def portfolio_total_sqft(id)
    portfolio = Portfolio.find(id)
    portfolio.spaces.sum(:sqft)
  end

  def portfolio_average_sqft(id)
    portfolio = Portfolio.find(id)
    total_spaces = portfolio.spaces.sum(:sqft)
    average = total_spaces / (portfolio.spaces.count)
    average.round(2)
  end
end
