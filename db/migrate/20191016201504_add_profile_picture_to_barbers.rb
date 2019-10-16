class AddProfilePictureToBarbers < ActiveRecord::Migration[5.2]
  def change
    add_column :barbers, :profile_picture, :string
  end
end
