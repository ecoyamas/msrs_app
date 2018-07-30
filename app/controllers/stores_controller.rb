class StoresController < ApplicationController
  before_action :authenticate_user!, :admin_user

  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
  end

  def create
    @store = current_user.stores.new(stores_params)
    @store.save
    redirect_to stores_path, success:'新しい店舗を登録しました'
  end

  def show
    @store = Store.find(params[:id])
    @studios = Studio.where(store_id: @store)
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    redirect_to stores_path, danger:'店舗を削除しました'
  end

  private
   def stores_params
     params.require(:store).permit(:store_name, :user_id)
   end

   def admin_user
     redirect_to(root_url) unless current_user.admin?
   end

end
