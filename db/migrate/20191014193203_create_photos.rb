class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :photo
      t.text :caption
      t.integer :barber_id
      t.timestamps
    end
  end
end
