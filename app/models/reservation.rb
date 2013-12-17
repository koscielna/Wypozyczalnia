class Reservation < ActiveRecord::Base
  belongs_to :car

  validates_presence_of :username
  validate :available_reservation, on: :create


  def available_reservation
    if begin_date > end_date
      errors.add(:begin_date, 'Data rozpoczęcia musi nastąpić przed datą zakończenia!')
    end

    car.reservations.each do |r|
      unless (begin_date < r.begin_date && end_date < r.begin_date) || (begin_date > r.end_date && end_date > r.end_date)
        errors.add('Zakres dat', '- nie można dokonać rezerwacji w danym terminie.')
        break
      end
    end

  end

end
