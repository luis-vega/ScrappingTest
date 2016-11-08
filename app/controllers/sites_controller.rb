class SitesController < ApplicationController
 
  # GET /sites
  def index
    @sites = Site.includes(:titles, :anchors)

    render json: @sites
  end

  # POST /sites
  def create
    @site = Site.new(site_params)


    if @site.save
      render json: @site, status: :created
    else
      render json: @site.errors, status: :unprocessable_entity
    end
  end


  private
    # Only allow a trusted parameter "white list" through.
    def site_params
      params.require(:site).permit(:url)
    end
end
