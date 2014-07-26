class ReservationsController < ApplicationController

  def create
    @restaurant = Restaurant.find params[:restaurant_id]
    @reservation = @restaurant.reservations.build(params.require(:reservation).permit(:requested_date_time, :email, :message))
    @reservation.user = current_user

    if @reservation.save
      ReservationMailer.reservation_notice_email(@reservation).deliver
      flash[:notice] = "Your reservation was created."
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show'
    end

  end

  def destroy
    @restaurant = Restaurant.find params[:restaurant_id]
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    flash[:notice] = "Your reservation was created."
    redirect_to restaurant_path(@restaurant)
  end

end