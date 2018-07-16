class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @reservation = Reservation.where('date >= ?', Date.today).where(user_id:@user.id)
  end
end
