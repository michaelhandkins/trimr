class CreateBarbers < ActiveRecord::Migration[5.2]
  def change
    create_table :barbers do |t|
      t.string :name
      t.string :zip_code
      t.string :phone_number
      t.text :barber_bio
      t.integer :user_id
      t.timestamps
    end
    add_index :barbers, :user_id
    add_index :barbers, :zip_code
  end
end
