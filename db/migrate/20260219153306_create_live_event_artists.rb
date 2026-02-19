class CreateLiveEventArtists < ActiveRecord::Migration[8.0]
  def change
    create_table :live_event_artists do |t|
      t.references :live_event, null: false, foreign_key: true
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
