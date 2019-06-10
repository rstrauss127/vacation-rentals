class ReservationsController < ApplicationController
  def new
    @listing = Listing.find(params[:listing_id])
    @reservation = @listing.reservations.build
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @reservation = @listing.reservations.build(reservation_params)
    if @reservation.save
      redirect_to root_path
    else
      puts @reservation.errors.full_messages
      redirect_to(listing_path(params[:listing_id]))
    end
  end

  def show
  end

  private
  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :guest_id, :listing_id, :user_id)
  end
end
