class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.present?
      pipedrive = AppServices::PipedriveService.new(current_user)
      pipedrive.create_person

      #redirect_to  '/profile/'+current_user.username.to_s
      redirect_to  '/posts'
    end
  end
end
