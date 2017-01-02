class RequestsController < ApplicationController
  def create
    request = Request.new(passenger_params)
    render json: {
      possible_drivers: request.possible_drivers
    }
  end

  def update
  end

  private

    def passenger_params
      params
        .required(:request)
        .permit(:passenger_id, location: [:lng, :lat])
    end
end
