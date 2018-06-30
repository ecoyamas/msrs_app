class StoresController < ApplicationController

  def index
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
  end

  private
   def stores_params
      params.require(:store).permit(:store_name)
   end

end
