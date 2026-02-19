class Artist < ApplicationRecord
  has_many :live_event_artists
  has_many :live_events, through: :live_event_artists
end
