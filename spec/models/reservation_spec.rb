require 'spec_helper'

describe Reservation do

  it { should belong_to(:restaurant) }

  describe "validates email" do
      it "validates when present" do
        reservation = Reservation.new
        expect(reservation.valid?).to be(false)
      end
      it "validates when present" do
        reservation = Reservation.new({email: 'chris@gmail.com', requested_date_time: Date.new})
        expect(reservation.valid?).to be(true)
      end
  end



end
