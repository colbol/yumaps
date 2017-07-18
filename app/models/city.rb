class City < ApplicationRecord
  belongs_to :country
  validates :name, presence: true, uniqueness: true
  validates :longitude, presence: true
  validates :latitude, presence:true
  validates :zoom, presence:true

  include PgSearch
  pg_search_scope :search_by_name, against: [ :name ]
end
