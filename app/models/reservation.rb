class Reservation < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user
  validates :email, presence: true
  validates :requested_date_time, presence: true


end
