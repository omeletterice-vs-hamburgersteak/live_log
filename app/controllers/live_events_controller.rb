class LiveEventsController < ApplicationController
  def index
    sort_column = params[:sort] || "date"
    sort_direction = params[:direction] || "asc"

    @artists = Artist.order(:name)

    @live_events = LiveEvent.order("#{sort_column} #{sort_direction}")
  end

  def show
  end

  def new
    @live_event = LiveEvent.new
    @artists = Artist.all
  end

  def create
    @live_event = LiveEvent.new(live_event_params)
    @artists = Artist.all

    if params[:live_event][:new_artist_name].present?
      artist = Artist.find_or_create_by(
        name: params[:live_event][:new_artist_name]
      )
      @live_event.artists << artist
    end

    if @live_event.save
      redirect_to live_events_path, notice: "ライブを登録しました！"
    else
      render :new
    end
  end

  def live_event_params
    params.require(:live_event).permit(
      :title,
      :date,
      :venue,
      artist_ids: []
    )
  end

  def edit
    @live_event = LiveEvent.find(params[:id])
  end

  def update
    @live_event = LiveEvent.find(params[:id])
    if @live_event.update(live_event_params)
      redirect_to live_events_path, notice: "更新しました！"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @live_event = LiveEvent.find(params[:id])
  end

  def destroy
    @live_event = LiveEvent.find(params[:id])
    @live_event.destroy
    redirect_to live_events_path, notice: "削除しました！"
  end
end
