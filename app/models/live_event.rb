class LiveEvent < ApplicationRecord
  has_many :live_event_artists, dependent: :destroy
  has_many :artists, through: :live_event_artists
end
