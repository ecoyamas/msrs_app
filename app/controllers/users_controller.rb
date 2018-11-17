class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @reservation = Reservation.where('start_datetime >= ?', Date.today).where(user_id: @user)

    #店舗検索処理
    @search_store = store_search(params)
    @near_store = near_store(params[:id])

  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to root_path
  end

  def store_search(search)
    if params[:store_name].present?
      result = Store.where("store_name like ?", "%#{params[:store_name]}%")
    end

    if params[:store_address].present?
      result = result.where("address like ?", "%#{params[:store_address]}%")
    end

    if result.present?
      return result
    else
    return false
    end
  end

  def near_store(id)
    @user = User.find_by(id:id)
    @user_address = @user.address
    @user_address = @user_address.slice(0..2)
    logger.info("#{@user_address}")
    result = Store.where("address like ?", "%#{@user_address}%").first
    logger.info(result)

    return result
  end

end
