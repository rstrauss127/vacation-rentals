class AttractionsController < ApplicationController
  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.new(attraction_params)
  end

  private
  def attraction_params
    params.require(:attraction).permit(:address, :name, :description, :type, :link, :listing_id)
  end
end
