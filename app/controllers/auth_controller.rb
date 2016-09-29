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

    if user.nil?
      render inline: 'no_entry', layout: false
    end

    session[:user_id] = user.id
    if user.admin?
      redirect_to '/admin'
    else
      redirect_to '/'
    end
  end

end
