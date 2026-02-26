class Favorite < ApplicationRecord
  enum :category, {
    "キャラクター": 0,
    "声優": 1,
    "2.5次元俳優": 2,
    "Vtuber": 3,
    "バンド": 4,
    "アイドル": 5,
    "俳優・女優": 6,
    "その他": 7
  }

  has_many :favorite_artists
  has_many :artists, through: :favorite_artists
end
