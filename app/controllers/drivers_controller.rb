class DriversController < ApplicationController
  before_action :set_driver, except: [:create]

  def create
    driver = Driver.new(create_driver_params)
    if driver.save
      render json: driver
    end
  end

  def update_location
    if @driver.update(update_driver_params)
      render json: @driver
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

    def set_driver
      @driver = Driver.find(params[:id])
    end
end
