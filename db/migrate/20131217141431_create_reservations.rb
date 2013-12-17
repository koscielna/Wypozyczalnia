class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :begin_date
      t.datetime :end_date
      t.string :username
      t.integer :car_id

      t.timestamps
    end
  end
end
