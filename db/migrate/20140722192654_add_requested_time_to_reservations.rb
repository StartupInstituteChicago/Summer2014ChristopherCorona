class AddRequestedTimeToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :requested_date_time, :datetime
  end
end
