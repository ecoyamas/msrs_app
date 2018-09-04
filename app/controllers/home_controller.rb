class HomeController < ApplicationController
  def top
    if signed_in?
      redirect_to current_user
    end
  end
end
