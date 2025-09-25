class CreateLiveEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :live_events do |t|
      t.date :date
      t.text :live_memo
      t.string :venue
      t.string :artist
      t.string :seat
      t.text :seat_memo

      t.timestamps
    end
  end
end
