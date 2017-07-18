class Vote < ApplicationRecord
  belongs_to :tag
  validates :ip, presence: true
end
