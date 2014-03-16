class BusesController < ApplicationController
  def index
    buses = Muni::VehicleLocation.all

    render json: {
      results: buses.map do |b|
        { route: b.routeTag, lat: b.lat.to_f, lon: b.lon.to_f }
      end,
      count: buses.length
    }
  end
end
