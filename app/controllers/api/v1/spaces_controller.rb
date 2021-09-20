class Api::V1::SpacesController < ApplicationController
  before_action :find_site, only: [:index, :show]

  def index
    render json: SpaceSerializer.new(@site.spaces)
  end

  def show
    space_record = @site.spaces.find(params[:id])
    render json: SpaceDetailsSerializer.new(space_record)
  end

  private
  def find_site
    @site = Site.find(params[:site_id])
  end
end
