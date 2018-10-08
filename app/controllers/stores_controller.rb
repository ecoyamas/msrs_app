class StoresController < ApplicationController
  require 'net/http'
  require 'uri'
  require 'json'
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

　　#経度、緯度の取得処理
    params = URI.encode(@store.address)
    uri =URI.parse("https://maps.googleapis.com/maps/api/geocode/json?address=#{params}&key=AIzaSyDXauEV4TuXM075vYtemnRiN7Bd1j9cw6k")
    logger.debug("URL：#{uri}")
    json = Net::HTTP.get(uri)
    result = JSON.parse(json)
    logger.debug("JSON：#{result}")
    lat = result["results"][0]["geometry"]["location"]["lat"]
    lng = result["results"][0]["geometry"]["location"]["lng"]
    logger.debug("Lat：#{lat},Lng：#{lng}")
    @store.lat = lat
    @store.lng = lng

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
