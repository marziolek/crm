#encoding: utf-8
class ApplicationController < ActionController::Base
  
  protect_from_forgery
  helper_method :current_user_session, :current_user
  private
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end
  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end
  
  def authenticate
    if !current_user
      redirect_to new_user_session_path
    end
  end
  
  private
  def admin_required
    if !current_user
      redirect_to new_user_session_path
    elsif !current_user.admin?
      flash[:notice] = "Nie masz uprawnień żeby to zrobić."
      redirect_to user_apps_clients_application_path(current_user)
    end
  end


end
