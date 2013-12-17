class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    car = Car.create(car_params)

    redirect_to cars_path
  end

  def show
    @car = Car.find(params[:id])

    begin_entry = :begin_entry
    end_entry = :end_entry
  end

  private

    def car_params
      params.require(:car).permit(:klasa, :name, :description)
    end

end
