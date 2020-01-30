class CreateTvShows < ActiveRecord::Migration[5.2]
  def change
    create_table :tv_shows do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.integer  :tv_channel_id

      t.timestamps
    end
  end
end
