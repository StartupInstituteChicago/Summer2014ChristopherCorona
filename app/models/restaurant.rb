class Restaurant < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :user

  validates :name, presence: true, length: {minimum: 5}
  validates :description, presence: true, uniqueness: true
  validates :phone_number, presence: true

end
