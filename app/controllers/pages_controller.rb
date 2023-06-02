class PagesController < ApplicationController
  def home
    @houses = House.all
    @markers = @houses.geocoded.map do |house|
      {
        lat: house.latitude,
        lng: house.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {house: house}),
        marker_html: render_to_string(partial: "marker", locals: {house: house})
      }
    end
  end
end
