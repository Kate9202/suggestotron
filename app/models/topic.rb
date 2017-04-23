class Topic < ApplicationRecord
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode  # auto-fetch address
  has_many :votes, dependent: :destroy
end
