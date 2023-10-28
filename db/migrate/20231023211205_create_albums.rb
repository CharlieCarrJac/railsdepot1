class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :price
      t.timestamps
    end
  end
end
