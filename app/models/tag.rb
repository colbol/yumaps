class Tag < ApplicationRecord
  belongs_to :district
  has_many :votes, dependent: :destroy
  validates :display, presence: true
  validates :name, presence: true
end
