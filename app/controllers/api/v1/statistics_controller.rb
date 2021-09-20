class Api::V1::StatisticsController < ApplicationController
  before_action :find_site, only: [:site]

  def site
    site_spaces = @site.sqft_statistics(@site.id)
    render json: site_spaces
  end

  private
  def find_site
    @site = Site.find(params[:id])
  end
end
