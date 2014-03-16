class BusesController < ApplicationController
  def index
    buses = Muni::VehicleLocation.all.map do |b|
      { route: b.routeTag, lat: b.lat.to_f, lon: b.lon.to_f }
    end

    if params[:near] && params[:near][:lat].present? && params[:near][:lon].present?
      buses.sort_by! { |b| (b[:lat] - params[:near][:lat].to_i) ** 2 + (b[:lon] - params[:near][:lon].to_f) ** 2 }
    end

    render json: {
      results: buses,
      count: buses.length
    }
  end
end
