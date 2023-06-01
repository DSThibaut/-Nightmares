class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.customer = current_user
    @booking.house_id = params[:id]
    @booking.save
    redirect_to profil_path(current_user[:id])
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)

    redirect_to profil_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :accepted)
  end
end
