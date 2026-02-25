class CreateFavorites < ActiveRecord::Migration[8.0]
  def change
    create_table :favorites do |t|
      t.string :name
      t.integer :category
      t.text :memo

      t.timestamps
    end
  end
end
