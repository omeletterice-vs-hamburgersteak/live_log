class Artist < ApplicationRecord
  has_many :live_event_artists, dependent: :destroy
  has_many :live_events, through: :live_event_artists

  has_many :favorite_artists
  has_many :favorites, through: :favorite_artists

  validates :name, presence: true
end
