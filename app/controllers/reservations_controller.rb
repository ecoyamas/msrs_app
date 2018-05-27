class ReservationsController < ApplicationController
  before_action :authenticate_user!


  def reserve
    @user = User.find(params[:id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.save
    redirect_to current_user
  end

  def destroy
  end
end

private
 def reservation_params
    params.require(:reservation).permit(:place, :studio, :start_date, :end_date,:user_id)
 end
