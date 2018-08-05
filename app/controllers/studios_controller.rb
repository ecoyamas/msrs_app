class StudiosController < ApplicationController
  before_action :authenticate_user!, :admin_user

  def new
    @studio = Studio.new
    @store_id = params[:store_id]
  end

  def create
    @studio = Studio.new(studios_params)
    @studio.save
    @store = Store.find(@studio.store_id)
    redirect_to store_path(@store), success: '新しいスタジオを登録しました'
  end

  def destroy
    @studio = Studio.find(params[:id])
    @store = Store.find(@studio.store_id)
    @studio.destroy
    redirect_to store_path(@store), danger: 'スタジオを削除しました'
  end

  private
    def studios_params
      params.require(:studio).permit(:studio_name, :store_id)
    end

    def admin_user
       redirect_to(root_url) unless current_user.admin?
    end

end
