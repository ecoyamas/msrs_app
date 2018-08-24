class ReservationsController < ApplicationController
  before_action :authenticate_user!

  def new
    @studio = Studio.find(params[:id])
    @store = Store.find(@studio.store_id)
    @studios = Studio.where(store_id: @store)
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      redirect_to current_user
    else
      redirect_to :back
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to current_user
  end

  def edit
    @reservation = Reservation.find(params[:id])
    @studio = Studio.find(@reservation.studio_id)
    @store = Store.find(@reservation.store_id)
    @studios = Studio.where(store_id: @store)
    @frame = Reservation.new.frame_list
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update_attributes(reservation_params)
    redirect_to current_user
  end

  private
    def reservation_params
      params.require(:reservation).permit(:store_id, :studio_id, :date, :start_time, :end_time, :user_id)
    end
end
