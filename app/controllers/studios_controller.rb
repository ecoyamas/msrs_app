class StudiosController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_user, only: [:new, :create, :destroy]

  def new
    @studio = Studio.new
    @store_id = params[:store_id]
  end

  def create
    @studio = Studio.new(studios_params)
    @store = Store.find(@studio.store_id)
    if @studio.save
      redirect_to store_path(@store), flash: {success: '新しいスタジオを登録しました'}
    else
      redirect_to new_studio_path(store_id: @store), flash: {danger: 'ダメよ！！ダメダメダメ！！'}
    end
  end

  def destroy
    @studio = Studio.find(params[:id])
    @store = Store.find(@studio.store_id)
    @studio.destroy
    redirect_to store_path(@store), danger: 'スタジオを削除しました'
  end

  def show
    @studio = Studio.find(params[:id])
    today = Date.today
    @reservations = Reservation.where(studio_id: @studio, date: today..today.since(6.days))
  end

  private
    def studios_params
      params.require(:studio).permit(:studio_name, :store_id)
    end

    def admin_user
       redirect_to(root_url) unless current_user.admin?
    end

end
