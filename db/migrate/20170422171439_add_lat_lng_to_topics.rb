class AddLatLngToTopics < ActiveRecord::Migration[5.0]
  def change
    add_column :topics, :lat, :string
    add_column :topics, :lng, :string
  end
end
