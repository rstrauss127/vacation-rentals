class ListingsController < ApplicationController
  def index
    @listing = Listing.new
    @listings = Listing.all
    #raise @listings.inspect #was the controlroller able to get the lists from the db
  end

  def show
    # i need to load the listing
    @listing = Listing.find(params[:id])
    @feature = @listing.features.build
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to listing_url(@listing)
    else
      @listings = Listing.all
      render :index
    end
  end

  private
  def listing_params
    params.require(:listing).permit(:title)
  end
end
