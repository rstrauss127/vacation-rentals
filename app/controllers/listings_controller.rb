class ListingsController < ApplicationController
  before_action :authentication_required

  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
    @reservations = @listing.reservations
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.create(listing_params)
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
