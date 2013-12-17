class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :klasa
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
