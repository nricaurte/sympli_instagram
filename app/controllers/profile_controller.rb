class ProfileController < ApplicationController
  def index
    @user = User.where(username:params[:username]).first
  end
end
