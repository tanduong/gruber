class PassengersController < ApplicationController
  def create
    passenger = Passenger.new(passenger_params)
    if passenger.save
      render json: passenger
    end
  end

  def update
  end

  private

    def passenger_params
      params
        .required(:passenger)
        .permit(:name)
    end
end
