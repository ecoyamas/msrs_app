class StoresController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_user, only: [:new, :create, :destroy]

  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(stores_params)
    if @store.save
      redirect_to stores_path, flash: {success: '新しい店舗を登録しました'}
    else
      redirect_to new_store_path, flash: {danger: 'ダメよ！！ダメダメダメ！！'}
    end
  end

  def show
    @store = Store.find(params[:id])
    @studios = Studio.where(store_id: @store)
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    redirect_to stores_path, danger: '店舗を削除しました'
  end

  private
    def stores_params
      params.require(:store).permit(:store_name, :address, :user_id)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

end
