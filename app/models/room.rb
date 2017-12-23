class Room < ApplicationRecord
  has_many :lessons
  belongs_to :building

  validates :title, :code, :building_id, presence: true
end
