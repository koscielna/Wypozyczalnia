class Reservation < ActiveRecord::Base
  belongs_to :car
  validates_with ReservationValidator
end
