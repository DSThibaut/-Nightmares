class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.house_id = params[:id]
    @booking.save
    redirect_to profil_path(current_user[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :accepted)
  end
end
