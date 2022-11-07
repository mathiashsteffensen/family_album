class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.references :creator
      t.string :name

      t.timestamps
    end
  end
end
