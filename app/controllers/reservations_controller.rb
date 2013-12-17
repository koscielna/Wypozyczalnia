class ReservationsController < ApplicationController
  def create
    car = Car.find(params[:car_id])
    reservation = car.reservations.create(reservation_params)

    redirect_to car
  end

  private

    def reservation_params
      params.require(:reservation).permit(:begin_date, :end_date, :username)
    end
end
