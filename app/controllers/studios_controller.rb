class StudiosController < ApplicationController
  def new
    @studio = Studio.new
  end

  def create
    @studio = Store.new(studios_params)
    @studio.save
    redirect_to store_path
  end

end

private
  def studios_params
    params.require(:studio).permit(:studio_name,:store_id)
  end
