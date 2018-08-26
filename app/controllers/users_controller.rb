class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @reservation = Reservation.where('start_datetime >= ?', Date.today).where(user_id: @user)
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to root_path
  end

end
