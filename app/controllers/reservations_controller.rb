class ReservationsController < ApplicationController
  def create
    car = Car.find(params[:car_id])
    reservation = car.reservations.create(reservation_params)

    if !reservation.valid?
      flash[:error] = reservation.errors.full_messages.join("<br>").html_safe
    end

    # raise Exception
    # if reservation.begin_date < reservation.end_date
    #   redirect_to car
    # end

    # car.reservations.each do |r|

    #   if (reservation.begin_date < r.begin_date && reservation.end_date < r.begin_date) ||
    #    (reservation.begin_date > r.end_date && reservation.end_date > r.end_date)
    #     create = true
    #   end
    # end

    # if create
    #  reservation = car.reservations.create(reservation_params)
    # end

    redirect_to car
  end

  private

    def reservation_params
      params.require(:reservation).permit(:begin_date, :end_date, :username)
    end
end
