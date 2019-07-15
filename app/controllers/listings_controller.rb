class ListingsController < ApplicationController
  before_action :authentication_required

  def index
    @listings = Listing.all
    respond_to do |format|
      format.html { render :index}
      format.json {render json: @listings}
    end
  end

  def show
    @listing = Listing.find(params[:id])
    @reservations = @listing.reservations
    respond_to do |format|
      format.html { render :show}
      format.json {render json: @listing}
    end
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      #redirect_to listing_url(@listing)
      render json: @listing, status: 201
    else
      render :new
    end
  end

  private
  def listing_params
    params.require(:listing).permit(:title, :description, :bathrooms, :bedrooms, :user_id, :address, :city, :state)
  end
end
