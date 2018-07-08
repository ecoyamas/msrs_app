class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @user = User.find(params[:id])
    @reservation = Reservation.where('date >= ?', Date.today).find(:all, :conditions => { :user_id => @user })
  end
end
