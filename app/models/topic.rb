class Topic < ApplicationRecord
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  after_validation :address_coding
  has_many :votes, dependent: :destroy

  def address_coding
    if address.present?
      geocode
    elsif latitude.present? && longitude.present?
      reverse_geocode
    end
  end
end
