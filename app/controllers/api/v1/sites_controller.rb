class Api::V1::SitesController < ApplicationController
  before_action :find_portfolio, only: [:index]

  def index
    render json: SiteSerializer.new(@portfolio.sites)
  end

  private
  def find_portfolio
    @portfolio = Portfolio.find(params[:portfolio_id])
  end
end
