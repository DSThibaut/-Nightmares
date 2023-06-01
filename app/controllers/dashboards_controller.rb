class DashboardsController < ApplicationController
  def profil
    @houses = current_user.houses
    @reservations = Booking.where(house: @houses)
  end
end
