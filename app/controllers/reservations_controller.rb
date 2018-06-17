class ReservationsController < ApplicationController
  before_action :authenticate_user!


  def reserve
    @user = User.find(params[:id])
    @reservation = Reservation.new
    @shibuyaA = Reservation.where(place:"渋谷店").where(studio:"Astudio")
    @shibuyaB = Reservation.where(place:"渋谷店").where(studio:"Bstudio")
    @shibuyaC = Reservation.where(place:"渋谷店").where(studio:"Cstudio")
    @shibuyaD = Reservation.where(place:"渋谷店").where(studio:"Cstudio")
    @yoyogi = Reservation.where(place:"代々木店")
    @shinjuku = Reservation.where(place:"新宿店")
    @takadanobaba = Reservation.where(place:"高田馬場店")
    @ikebukuro = Reservation.where(place:"池袋店")
    @otsuka = Reservation.where(place:"大塚店")
    @frame = Reservation.new.frame_list
    @place = Reservation.new.place_list
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
    @frame = Reservation.new.frame_list
    @place = Reservation.new.place_list
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update_attributes(reservation_params)
    redirect_to current_user
  end
end

private
 def reservation_params
    params.require(:reservation).permit(:place, :studio, :date, :frame,:user_id)
 end
