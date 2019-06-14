class ReservationsController < ApplicationController
  def new
    @listing = Listing.find(params[:listing_id])
    @reservation = @listing.reservations.build
    @reservations = @listing.reservations
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @reservation = @listing.reservations.build(reservation_params)
    if @reservation.save
      redirect_to listing_path(@listing)
    else
      puts @reservation.errors.full_messages
      redirect_to(listing_path(params[:listing_id]))
    end
  end

  def index
    @listing = Listing.find(params[:listing_id])
    @reservations = @listing.reservations
  end

  def show
  end

  private
  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :guest_id, :listing_id, :user_id)
  end
end
