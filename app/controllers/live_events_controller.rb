class LiveEventsController < ApplicationController
  def index
    @live_events = LiveEvent.all
  end

  def show
  end

  def new
    @live_event = LiveEvent.new
  end

  def create
    @live_event = LiveEvent.new(live_event_params)
    if @live_event.save
      redirect_to live_events_path, notice: "ライブを登録しました！"
    else
      render :new
    end
  end

  def live_event_params
    params.require(:live_event).permit(:title, :date, :veune, :artist)
  end

  def edit
  end
end
