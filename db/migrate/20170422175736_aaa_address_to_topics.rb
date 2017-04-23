class AaaAddressToTopics < ActiveRecord::Migration[5.0]
  def change
    add_column :topics, :address, :string

  end
end
