class AddSquareEmbedCodeToBarbers < ActiveRecord::Migration[5.2]
  def change
    add_column :barbers, :square_embed_code, :string
  end
end
