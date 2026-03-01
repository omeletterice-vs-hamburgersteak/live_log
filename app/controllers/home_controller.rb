class HomeController < ApplicationController
  def index
    @favorite_count = Favorite.count
    @artist_count = Artist.count
    @live_count = LiveEvent.count
    @recent_live_events = LiveEvent.order(date: :desc).limit(5)
  end
end
