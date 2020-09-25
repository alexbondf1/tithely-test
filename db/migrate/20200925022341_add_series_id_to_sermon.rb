class AddSeriesIdToSermon < ActiveRecord::Migration[6.0]
  def change
    add_column :sermons, :series_id, :integer
  end
end
