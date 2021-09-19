class Api::V1::PortfoliosController < ApplicationController
  def index
    render json: PortfolioSerializer.new(Portfolio.all)
  end

  def show
    portfolio_record = Portfolio.find(params[:id])
    render json: PortfolioDetailsSerializer.new(portfolio_record)
  end
end
