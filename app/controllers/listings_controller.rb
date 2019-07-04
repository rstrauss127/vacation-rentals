class ListingsController < ApplicationController
  before_action :authentication_required

  def index
    @listings = Listing.all
    render json: @listings, status: 200
  end

  def show
    @listing = Listing.find(params[:id])
    @reservations = @listing.reservations

  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to listing_url(@listing)
    else
      render :new
    end
  end

  private
  def listing_params
    params.require(:listing).permit(:title, :description, :bathrooms, :bedrooms, :user_id)
  end
end
