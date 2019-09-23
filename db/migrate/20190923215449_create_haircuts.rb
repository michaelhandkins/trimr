class CreateHaircuts < ActiveRecord::Migration[5.2]
  def change
    create_table :haircuts do |t|
      t.string :haircut_name
      t.text :description
      t.integer :cost
      t.integer :user_id
      t.timestamps
    end
    add_index :haircuts, :cost
    add_index :haircuts, :user_id
  end
end
