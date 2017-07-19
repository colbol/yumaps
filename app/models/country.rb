class Country < ApplicationRecord
  has_many :cities
  validates :name, presence: true

  # include PgSearch
  # multisearchable against: [ :name ], using: [ :trigram,:tsearch => {:prefix => true}]
end
