class AdminController < ApplicationController
  layout 'admin'
#  before_filter :require_user

  private

  def require_user
    redirect_to '/auth/google_oauth2' unless current_user
  end

  helper_method def current_user
    @current_user ||= User.find(session[:user_id])
  rescue
    nil
  end
end
