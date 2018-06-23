class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @reservation = Reservation.find(:all, :conditions => { :user_id => @user })
    @day = Date.today
    @today = @day.to_date
  end
end
