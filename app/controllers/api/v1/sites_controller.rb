class Api::V1::SitesController < ApplicationController
  before_action :find_portfolio, only: [:index, :show]

  def index
    render json: SiteSerializer.new(@portfolio.sites)
  end

  def show
    site_record = @portfolio.sites.find(params[:id])
    render json: SiteDetailsSerializer.new(site_record)
  end

  private
  def find_portfolio
    @portfolio = Portfolio.find(params[:portfolio_id])
  end
end
