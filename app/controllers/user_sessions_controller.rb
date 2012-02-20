#encoding: UTF-8
class UserSessionsController < ApplicationController
  layout "login" 
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Logowanie powiodło się."
		if current_user.admin?
			redirect_to root_url
		else
			redirect_to user_apps_clients_application_path(current_user)
		end
    else
      flash[:notice] = "Błędne dane."
      render :action => 'new'
    end
  end

  def destroy
	#current_user_session.destroy
    @user_session = UserSession.find
    @user_session.destroy
    flash[:notice] = "Wylogowałeś się."
    redirect_to root_url
  end
end

