class ReservationsController < ApplicationController
  def new
    @listing = Listing.find(params[:listing_id])
    @reservation = @listing.reservations.build
    @reservations = @listing.reservations
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @reservation = @listing.reservations.build(reservation_params)
    @reservation.user_id = current_user.id
    if @reservation.save
      render json: @reservation, status: 201
    else
      redirect_to new_listing_reservation_path
      flash[:notice] = @reservation.errors.full_messages_for(:start_date)
    end
  end

  def index
    @reservations = Reservation.where(listing_id: params[:listing_id])
    @title = "Reservation list for #{@reservations.first.listing_title}"
    respond_to do |format|
      format.html {render :index}
      format.json { render json: @reservations}
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  private
  def reservation_params
    params.require(:reservation).permit(:start_date)
  end
end
