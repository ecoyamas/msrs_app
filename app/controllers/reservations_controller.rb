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
    @studio = Studio.find(1)
    @store = Store.find(@studio.store_id)
    @studios = Studio.where(store_id: @store)
    if @reservation.save
      redirect_to current_user, flash: {success: '予約しました。'}
    else
      render 'new', object: @store, object: @studios
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to current_user, flash: {danger: '予約を取り消しました。'}
  end

  def edit
    @reservation = Reservation.find(params[:id])
    @studio = Studio.find(@reservation.studio_id)
    @store = Store.find(@reservation.store_id)
    @studios = Studio.where(store_id: @store)
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update_attributes(reservation_params)
    redirect_to current_user, flash: {success: '予約を変更しました。'}
  end

  private
    def reservation_params
      params.require(:reservation).permit(:store_id, :studio_id, :start_datetime, :use_time, :user_id)
    end
end
