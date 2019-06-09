class ListingsController < ApplicationController
  before_action :authentication_required

  def index
    if session[:user_id].present? #is user logged in?
      @listing = Listing.new
      @listings = Listing.all
      #raise @listings.inspect #was the controlroller able to get the lists from the db
    else
      redirect_to root_path
    end
  end

  def show
    # i need to load the listing
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
      @listings = Listing.all
      render :index
    end
  end

  private
  def listing_params
    params.require(:listing).permit(:title, :description, :bathrooms, :bedrooms)
  end
end
