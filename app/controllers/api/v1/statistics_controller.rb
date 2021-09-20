class Api::V1::StatisticsController < ApplicationController
  before_action :find_site, only: [:site]
  before_action :find_portfolio, only: [:portfolio]

  def site
    site_spaces = @site.sqft_statistics(@site.id)
    render json: site_spaces
  end

  def portfolio
    portfolio_spaces = @portfolio.sqft_statistics(@portfolio.id)
    render json: portfolio_spaces
  end

  private
  def find_site
    @site = Site.find(params[:id])
  end

  def find_portfolio
    @portfolio = Portfolio.find(params[:id])
  end
end
