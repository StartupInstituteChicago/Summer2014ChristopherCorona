class ReservationMailer < ActionMailer::Base
  default from: "from@example.com"

  def reservation_notice_email(reservation)
    @reservation = reservation
    mail(to: @reservation.user.email, subject: 'Your reservation at #{@reservation.restaurant.name}.')
  end


end
