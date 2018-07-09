class StoresController < ApplicationController
  before_action :admin_user

  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
  end

  def create
    @store = current_user.stores.new(stores_params)
    @store.save
    redirect_to stores_path
  end

  def show
    @store = Store.find(params[:id])
  end

  def destroy
   @store = Store.find(params[:id])
   @store.destroy
   redirect_to stores_path
  end

  private
   def stores_params
      params.require(:store).permit(:store_name, :user_id)
   end

   def admin_user
      redirect_to(root_url) unless current_user.admin?
   end

end
