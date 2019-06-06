class ListingsController < ApplicationController
  def index
    @listing = Listing.new
    @listings = Listing.all
    #raise @listings.inspect #was the controlroller able to get the lists from the db
  end

  def show
    # i need to load the listing
    @listing = Listing.find(params[:id])
  end

  def create
    @listing = Listing.create(listing_params)
    redirect_to listing_url(@listing)
  end

  private
  def listing_params
    params.require(:listing).permit(:title)
  end
end
