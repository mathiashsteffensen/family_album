class CreateAlbumEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :album_entries do |t|
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
