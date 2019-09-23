class AddBarberIdToHaircuts < ActiveRecord::Migration[5.2]
  def change
    add_column :haircuts, :barber_id, :integer
  end
end
