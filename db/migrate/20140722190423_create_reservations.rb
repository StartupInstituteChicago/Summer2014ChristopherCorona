class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string "email"
      t.text "message"
      t.integer "restaurant_id"
      t.integer "user_id"
      t.timestamps
    end
  end
end
