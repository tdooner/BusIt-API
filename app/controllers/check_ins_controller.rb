class CheckInsController < ApplicationController
  def index
    bus = params[:bus_id]
    render json: CheckIn.where(bus_id: bus).order(created_at: :desc).limit(10)
  end

  def create
    bus_id = params[:bus_id]

    render json: CheckIn.create(
      bus_id: bus_id
    )
  end
end
