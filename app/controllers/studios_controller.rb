class StudiosController < ApplicationController
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

end
