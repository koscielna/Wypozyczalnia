class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    car = Car.create(post_params)

    redirect_to cars_path
  end

  def show
    @car = Car.find(params[:id])
  end

  private

    def post_params
      params.require(:car).permit(:klasa, :name, :description)
    end

end
