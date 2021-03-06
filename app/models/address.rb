class Address < ApplicationRecord
  belongs_to :service_provider
  geocoded_by :full_address
  after_validation :geocode

  def full_address
    [street, city, country].join(', ')
  end
end