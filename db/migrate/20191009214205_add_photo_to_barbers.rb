class AddPhotoToBarbers < ActiveRecord::Migration[5.2]
  def change
    add_column :barbers, :photo, :string
  end
end
