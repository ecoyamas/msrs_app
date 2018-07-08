class StoresController < ApplicationController
  before_action :authenticate_user!

  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(stores_params)
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
      params.require(:store).permit(:store_name)
   end

end
