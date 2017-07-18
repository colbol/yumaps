class City < ApplicationRecord
  belongs_to :country
  validates :name, presence: true, uniqueness: true
  validates :longitude, presence: true
  validates :latitude, presence:true
  validates :zoom, presence:true
end
