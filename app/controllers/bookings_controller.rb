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

  def approve
    @booking = Booking.find(params[:id])
    if @booking.update(accepted: true)
      redirect_to profil_path, notice: "Accepté"
    else
      redirect_to profil_path, notice: "Erreur"
    end
  end

  def decline
    @booking = Booking.find(params[:id])
    if @booking.update(accepted: false)
      redirect_to profil_path, notice: "Refusé"
    else
      redirect_to profil_path, notice: "erreur"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :accepted)
  end
end
