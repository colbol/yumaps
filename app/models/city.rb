class City < ApplicationRecord
  belongs_to :country
  has_many :districts, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :longitude, presence: true
  validates :latitude, presence:true
  validates :zoom, presence:true

  include PgSearch
  # multisearchable against: [ :name ], using: [ :trigram, :tsearch => {:prefix => true} ]
  pg_search_scope :search_city, against: [ :name ], ignoring: :accents, using: {
                    tsearch: { prefix: true },
                    dmetaphone: { any_word: true, sort_only: true },
                    trigram: {}
                  }
end
