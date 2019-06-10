class ReservationsController < ApplicationController
  def new

  end

  def create
    raise params.inspect
    @reservation = Reservation.create(reservation_params)
    if @reservation.save
      redirect_to listing_path(@reservation.listing_id)
    else
      flash[:notice] = @reservation.errors
      render :new
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :guest_id, :listing_id)
  end
end
