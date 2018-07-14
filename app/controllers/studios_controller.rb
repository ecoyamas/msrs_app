class StudiosController < ApplicationController
  before_action :authenticate_user!, :admin_user

  def new
    @studio = Studio.new
    @store_id = params[:store_id]
  end

  def create
    @studio = Studio.new(studios_params)
    @studio.save
    redirect_to "/stores/#{@studio.store_id}"
  end

  private
    def studios_params
      params.require(:studio).permit(:studio_name, :store_id)
    end

    def admin_user
       redirect_to(root_url) unless current_user.admin?
    end

end
