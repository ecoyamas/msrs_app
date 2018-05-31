class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @reservation =Reservation.find(user_id:@user.id)
  end
end
