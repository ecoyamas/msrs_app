class ReservationsController < ApplicationController
  before_action :authenticate_user!

  def reserve
    @user = User.find(params[:id])
    @reservation = Reservation.new
    @shibuyaA = Reservation.where(place:"渋谷店").where(studio:"Astudio")
    @shibuyaB = Reservation.where(place:"渋谷店").where(studio:"Bstudio")
    @shibuyaC = Reservation.where(place:"渋谷店").where(studio:"Cstudio")
    @shibuyaD = Reservation.where(place:"渋谷店").where(studio:"Cstudio")
    @yoyogiA_0 = Reservation.where(place:1).where(studio:"Astudio").where(Date:Date.today).where(frame:0)
    @yoyogiA_1 = Reservation.where(place:1).where(studio:"Astudio").where(Date:Date.today).where(frame:1)
    @yoyogiA_2 = Reservation.where(place:1).where(studio:"Astudio").where(Date:Date.today).where(frame:2)
    @yoyogiA_3 = Reservation.where(place:1).where(studio:"Astudio").where(Date:Date.today).where(frame:3)
    @yoyogiA_4 = Reservation.where(place:1).where(studio:"Astudio").where(Date:Date.today).where(frame:4)
    @yoyogiA_5 = Reservation.where(place:1).where(studio:"Astudio").where(Date:Date.today).where(frame:5)
    @yoyogiA_6 = Reservation.where(place:1).where(studio:"Astudio").where(Date:Date.today).where(frame:6)
    @yoyogiA_7 = Reservation.where(place:1).where(studio:"Astudio").where(Date:Date.today).where(frame:7)
    @yoyogiA_8 = Reservation.where(place:1).where(studio:"Astudio").where(Date:Date.today).where(frame:8)
    @yoyogiA_9 = Reservation.where(place:1).where(studio:"Astudio").where(Date:Date.today).where(frame:9)
    @yoyogiA_10 = Reservation.where(place:1).where(studio:"Astudio").where(Date:Date.today).where(frame:10)
    @yoyogiA_11 = Reservation.where(place:1).where(studio:"Astudio").where(Date:Date.today).where(frame:11)
    @yoyogiB_0 = Reservation.where(place:1).where(studio:"Bstudio").where(Date:Date.today).where(frame:0)
    @yoyogiB_1 = Reservation.where(place:1).where(studio:"Bstudio").where(Date:Date.today).where(frame:1)
    @yoyogiB_2 = Reservation.where(place:1).where(studio:"Bstudio").where(Date:Date.today).where(frame:2)
    @yoyogiB_3 = Reservation.where(place:1).where(studio:"Bstudio").where(Date:Date.today).where(frame:3)
    @yoyogiB_4 = Reservation.where(place:1).where(studio:"Bstudio").where(Date:Date.today).where(frame:4)
    @yoyogiB_5 = Reservation.where(place:1).where(studio:"Bstudio").where(Date:Date.today).where(frame:5)
    @yoyogiB_6 = Reservation.where(place:1).where(studio:"Bstudio").where(Date:Date.today).where(frame:6)
    @yoyogiB_7 = Reservation.where(place:1).where(studio:"Bstudio").where(Date:Date.today).where(frame:7)
    @yoyogiB_8 = Reservation.where(place:1).where(studio:"Bstudio").where(Date:Date.today).where(frame:8)
    @yoyogiB_9 = Reservation.where(place:1).where(studio:"Bstudio").where(Date:Date.today).where(frame:9)
    @yoyogiB_10 = Reservation.where(place:1).where(studio:"Bstudio").where(Date:Date.today).where(frame:10)
    @yoyogiB_11 = Reservation.where(place:1).where(studio:"Bstudio").where(Date:Date.today).where(frame:11)
    @yoyogiC_0 = Reservation.where(place:1).where(studio:"Cstudio").where(Date:Date.today).where(frame:0)
    @yoyogiC_1 = Reservation.where(place:1).where(studio:"Cstudio").where(Date:Date.today).where(frame:1)
    @yoyogiC_2 = Reservation.where(place:1).where(studio:"Cstudio").where(Date:Date.today).where(frame:2)
    @yoyogiC_3 = Reservation.where(place:1).where(studio:"Cstudio").where(Date:Date.today).where(frame:3)
    @yoyogiC_4 = Reservation.where(place:1).where(studio:"Cstudio").where(Date:Date.today).where(frame:4)
    @yoyogiC_5 = Reservation.where(place:1).where(studio:"Cstudio").where(Date:Date.today).where(frame:5)
    @yoyogiC_6 = Reservation.where(place:1).where(studio:"Cstudio").where(Date:Date.today).where(frame:6)
    @yoyogiC_7 = Reservation.where(place:1).where(studio:"Cstudio").where(Date:Date.today).where(frame:7)
    @yoyogiC_8 = Reservation.where(place:1).where(studio:"Cstudio").where(Date:Date.today).where(frame:8)
    @yoyogiC_9 = Reservation.where(place:1).where(studio:"Cstudio").where(Date:Date.today).where(frame:9)
    @yoyogiC_10 = Reservation.where(place:1).where(studio:"Cstudio").where(Date:Date.today).where(frame:10)
    @yoyogiC_11 = Reservation.where(place:1).where(studio:"Cstudio").where(Date:Date.today).where(frame:11)
    @yoyogiD_0 = Reservation.where(place:1).where(studio:"Dstudio").where(Date:Date.today).where(frame:0)
    @yoyogiD_1 = Reservation.where(place:1).where(studio:"Dstudio").where(Date:Date.today).where(frame:1)
    @yoyogiD_2 = Reservation.where(place:1).where(studio:"Dstudio").where(Date:Date.today).where(frame:2)
    @yoyogiD_3 = Reservation.where(place:1).where(studio:"Dstudio").where(Date:Date.today).where(frame:3)
    @yoyogiD_4 = Reservation.where(place:1).where(studio:"Dstudio").where(Date:Date.today).where(frame:4)
    @yoyogiD_5 = Reservation.where(place:1).where(studio:"Dstudio").where(Date:Date.today).where(frame:5)
    @yoyogiD_6 = Reservation.where(place:1).where(studio:"Dstudio").where(Date:Date.today).where(frame:6)
    @yoyogiD_7 = Reservation.where(place:1).where(studio:"Dstudio").where(Date:Date.today).where(frame:7)
    @yoyogiD_8 = Reservation.where(place:1).where(studio:"Dstudio").where(Date:Date.today).where(frame:8)
    @yoyogiD_9 = Reservation.where(place:1).where(studio:"Dstudio").where(Date:Date.today).where(frame:9)
    @yoyogiD_10 = Reservation.where(place:1).where(studio:"Dstudio").where(Date:Date.today).where(frame:10)
    @yoyogiD_11 = Reservation.where(place:1).where(studio:"Dstudio").where(Date:Date.today).where(frame:11)
    @yoyogiE_0 = Reservation.where(place:1).where(studio:"Estudio").where(Date:Date.today).where(frame:0)
    @yoyogiE_1 = Reservation.where(place:1).where(studio:"Estudio").where(Date:Date.today).where(frame:1)
    @yoyogiE_2 = Reservation.where(place:1).where(studio:"Estudio").where(Date:Date.today).where(frame:2)
    @yoyogiE_3 = Reservation.where(place:1).where(studio:"Estudio").where(Date:Date.today).where(frame:3)
    @yoyogiE_4 = Reservation.where(place:1).where(studio:"Estudio").where(Date:Date.today).where(frame:4)
    @yoyogiE_5 = Reservation.where(place:1).where(studio:"Estudio").where(Date:Date.today).where(frame:5)
    @yoyogiE_6 = Reservation.where(place:1).where(studio:"Estudio").where(Date:Date.today).where(frame:6)
    @yoyogiE_7 = Reservation.where(place:1).where(studio:"Estudio").where(Date:Date.today).where(frame:7)
    @yoyogiE_8 = Reservation.where(place:1).where(studio:"Estudio").where(Date:Date.today).where(frame:8)
    @yoyogiE_9 = Reservation.where(place:1).where(studio:"Estudio").where(Date:Date.today).where(frame:9)
    @yoyogiE_10 = Reservation.where(place:1).where(studio:"Estudio").where(Date:Date.today).where(frame:10)
    @yoyogiE_11 = Reservation.where(place:1).where(studio:"Estudio").where(Date:Date.today).where(frame:11)
    @yoyogiF_0 = Reservation.where(place:1).where(studio:"Fstudio").where(Date:Date.today).where(frame:0)
    @yoyogiF_1 = Reservation.where(place:1).where(studio:"Fstudio").where(Date:Date.today).where(frame:1)
    @yoyogiF_2 = Reservation.where(place:1).where(studio:"Fstudio").where(Date:Date.today).where(frame:2)
    @yoyogiF_3 = Reservation.where(place:1).where(studio:"Fstudio").where(Date:Date.today).where(frame:3)
    @yoyogiF_4 = Reservation.where(place:1).where(studio:"Fstudio").where(Date:Date.today).where(frame:4)
    @yoyogiF_5 = Reservation.where(place:1).where(studio:"Fstudio").where(Date:Date.today).where(frame:5)
    @yoyogiF_6 = Reservation.where(place:1).where(studio:"Fstudio").where(Date:Date.today).where(frame:6)
    @yoyogiF_7 = Reservation.where(place:1).where(studio:"Fstudio").where(Date:Date.today).where(frame:7)
    @yoyogiF_8 = Reservation.where(place:1).where(studio:"Fstudio").where(Date:Date.today).where(frame:8)
    @yoyogiF_9 = Reservation.where(place:1).where(studio:"Fstudio").where(Date:Date.today).where(frame:9)
    @yoyogiF_10 = Reservation.where(place:1).where(studio:"Fstudio").where(Date:Date.today).where(frame:10)
    @yoyogiF_11 = Reservation.where(place:1).where(studio:"Fstudio").where(Date:Date.today).where(frame:11)
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
    @store = Store.find_by(store_name: params[:store_name])
    @studios = Studio.where(store_id:@store.id)
    @reservation = Reservation.find(params[:id])
    @frame = Reservation.new.frame_list
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update_attributes(reservation_params)
    redirect_to current_user
  end

  def index
    @stores = Store.all
  end

  def store
    @store = Store.find(params[:id])
    @studios = Studio.where(store_id:@store.id)
    @reservation = Reservation.new
    @frame = Reservation.new.frame_list
  end

  private
    def reservation_params
      params.require(:reservation).permit(:place, :studio, :date, :frame,:user_id)
    end
end
