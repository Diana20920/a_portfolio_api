class Api::V1::SpacesController < ApplicationController
  before_action :find_site, only: [:index]

  def index
    render json: SpaceSerializer.new(@site.spaces)
  end

  private
  def find_site
    @site = Site.find(params[:site_id])
  end
end
