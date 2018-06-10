class ReservationsController < ApplicationController
  before_action :authenticate_user!


  def reserve
    @user = User.find(params[:id])
    @reservation = Reservation.new
  end

  def create
    @reservation = current_user.reservations.new(reservation_params)
    @reservation.save
    redirect_to current_user
  end

  def destroy
   @reservation = Reservation.find(params[:id])
   @reservation.destroy
   redirect_to current_user
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update_attributes(reservation_params)
    redirect_to current_user
  end
end

private
 def reservation_params
    params.require(:reservation).permit(:place, :studio, :start_date, :end_date,:user_id)
 end
