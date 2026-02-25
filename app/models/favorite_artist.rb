class FavoriteArtist < ApplicationRecord
  belongs_to :favorite
  belongs_to :artist
end
