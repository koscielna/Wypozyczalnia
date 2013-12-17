class RenameKlasaToCategoryForCars < ActiveRecord::Migration
  def change
    rename_column :cars, :klasa, :category
  end
end
