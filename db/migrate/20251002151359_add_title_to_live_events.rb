class AddTitleToLiveEvents < ActiveRecord::Migration[8.0]
  def change
    add_column :live_events, :title, :string
  end
end
