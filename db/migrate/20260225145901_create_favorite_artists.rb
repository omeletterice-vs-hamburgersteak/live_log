class CreateFavoriteArtists < ActiveRecord::Migration[8.0]
  def change
    create_table :favorite_artists do |t|
      t.references :favorite, null: false, foreign_key: true
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
