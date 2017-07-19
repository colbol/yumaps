class District < ApplicationRecord
  belongs_to :city
  has_many :tags, dependent: :destroy
  validates :name, presence: true
end
