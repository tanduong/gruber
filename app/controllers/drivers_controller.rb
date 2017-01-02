class DriversController < ApplicationController
  before_action :set_driver, except: [:create]

  def create
    driver = Driver.new(create_driver_params)
    if driver.save
      render json: driver
    end
  end

  def update_location
    if location = driver_position_params["location"]
      point = DriverPosition.new location["lng"], location["lat"]
      if @driver.update(lonlat: point.to_point)
        render json: @driver
      end
    end
  end

  def update
    if @driver.update(update_driver_params)
      render json: @driver
    end
  end

  private

    def create_driver_params
      params
        .required(:driver)
        .permit(:name)
    end

    def update_driver_params
      params
        .required(:driver)
        .permit(:state)
    end

    def driver_position_params
      params
        .required(:driver)
        .permit(location: [:lon, :lat])
    end

    def set_driver
      @driver = Driver.find(params[:id])
    end
end
