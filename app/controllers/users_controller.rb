class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @reservation = Reservation.where('start_datetime >= ?', Date.today).where(user_id: @user)

    #店舗検索処理
    @search_store = store_search(params)
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to root_path
  end

  def store_search(search)
    if search
      hoge = Store.where('store_name = ?', params[:search])
      #検索結果を変数に入れて、変数内を次の条件で検索してまた変数に入れて最後にreturnで値を返す。
      return hoge
    end
  end

end
