class ApplicationController < ActionController::Base

  protect_from_forgery 
  
  helper_method :admin?

  protected

  def authorize
    unless admin?
      flash[:notice] = 'Please log in'
      redirect_to login_path
      false
    end
  end

  def admin?
    session[:adminLoggedIn] == 1
  end

  def store_location
    session[:return_to] = request.request_uri
  end

end