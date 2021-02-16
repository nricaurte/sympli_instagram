class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.present?
      #redirect_to  '/profile/'+current_user.username.to_s
      redirect_to  '/posts'
    end
  end
end
