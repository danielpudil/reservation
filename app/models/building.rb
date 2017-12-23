class Building < ApplicationRecord
  has_many :rooms, dependent: :destroy


  validates :title, :code, :address, presence: true
end
