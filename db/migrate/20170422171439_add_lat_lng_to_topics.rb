class AddLatLngToTopics < ActiveRecord::Migration[5.0]
  def change
    add_column :topics, :latitude, :float
    add_column :topics, :longitude, :float
  end
end
