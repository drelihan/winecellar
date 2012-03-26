class SessionsController < ApplicationController

  def create
    session[:password] = params[:password]

    if ( session[:password] == 'bosswine' )
      session[:adminLoggedIn] = 1

      flash[:notice] = "Successfully logged in"

      if ( session[:return_to] )
        redirect_to bottles_path
      else
        redirect_to bottles_path
      end

    else
      flash[:notice] = "Error logging in. Please try a different password."
      redirect_to login_path
    end
  end

  def destroy
    reset_session
    flash[:notice] = "Logged Out"
    begin
       redirect_to bottles_url
    rescue RedirectBackError
       redirect_to bottles_url
    end
  end


end

