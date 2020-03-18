class Garden < ApplicationRecord
  validates :title, uniqueness: true, presence: true
  validates :description, presence: true
  validates :location, uniqueness: true, presence: true
  validates :price, presence: true
  validates :capacity, presence: true

  belongs_to :user
  has_many_attached :photos
end


