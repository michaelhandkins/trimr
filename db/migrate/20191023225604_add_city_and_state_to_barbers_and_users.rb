class AddCityAndStateToBarbersAndUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :barbers, :city, :string
    add_column :barbers, :state, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
  end
end
