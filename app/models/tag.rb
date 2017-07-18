class Tag < ApplicationRecord
  belongs_to :districts
  validates :display, presence: true
  validates :name, presence: true
end
