class Restaurant < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :users
  has_many :reservations
  has_many :restaurant_categories
  has_many :categories, through: :restaurant_categories

  validates :name, presence: true, length: {minimum: 5}
  validates :description, presence: true, uniqueness: true
  validates :phone_number, presence: true

end
