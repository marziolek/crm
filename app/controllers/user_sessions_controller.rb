#encoding: UTF-8
class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Logowanie powiodło się."
      redirect_to root_url
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

