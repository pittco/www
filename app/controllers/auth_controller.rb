class AuthController < ApplicationController

  def logout
    reset_session
    redirect_to root_path
  end

  def login
    redirect_to '/auth/google_oauth2'
  end

  def oauth2_callback
    user = User.from_omniauth request.env["omniauth.auth"]

    if user
      session[:user_id] = user.id
      redirect_to '/admin'
    else
      render 'no_entry', layout: false
    end
  end

end
