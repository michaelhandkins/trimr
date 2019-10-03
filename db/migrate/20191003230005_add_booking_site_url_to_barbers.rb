class AddBookingSiteUrlToBarbers < ActiveRecord::Migration[5.2]
  def change
    add_column :barbers, :booking_site_url, :string
  end
end
