class Favorite < ApplicationRecord
  enum :category, {
    character: 0,
    voice_actor: 1,
    stage_actor: 2,
    vtuber: 3,
    band: 4,
    idol: 5,
    actor: 6,
    other: 7
  }

  has_many :favorite_artists
  has_many :artists, through: :favorite_artists
end
