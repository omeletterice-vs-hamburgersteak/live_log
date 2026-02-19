class RemoveArtistFromLiveEvents < ActiveRecord::Migration[8.0]
  def change
    remove_column :live_events, :artist, :string
  end
end
