class AddLatAndLngToBarbers < ActiveRecord::Migration[5.2]
  def change
    add_column :barbers, :latitude, :float
    add_column :barbers, :longitude, :float
  end
end
