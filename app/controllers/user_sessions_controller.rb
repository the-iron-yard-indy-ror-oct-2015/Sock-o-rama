class UserSessionsController < ApplicationController
  before_action :require_user, only:[:destroy]

  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      respond_to do |format|
        format.html {root_url}
        format.js { }
      end
    else
      respond_to do |format|
          format.html {root_url}
          format.js {render 'errors'}
        end
    end
  end

  def destroy
    current_user_session.destroy
    flash[:alert] = "Logout successful!"
    redirect_to root_url
  end

end
