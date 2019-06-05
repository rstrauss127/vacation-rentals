class ListingsController < ApplicationController
  def index
    @listings = Listing.all
    #raise @listings.inspect #was the controlroller able to get the lists from the db
  end

  def show
    # i need to load the listing
    @listing = Listing.find(params[:id])
  end
end
