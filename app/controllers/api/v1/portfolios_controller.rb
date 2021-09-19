class Api::V1::PortfoliosController < ApplicationController
  def index
    render json: PortfolioSerializer.new(Portfolio.all)
  end
end
