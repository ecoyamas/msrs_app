class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @reservation = Reservation.where('date >= ?', Date.today).find(:all, :conditions => { :user_id => @user })
  end
end
