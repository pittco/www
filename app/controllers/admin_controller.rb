class AdminController < ApplicationController
  layout 'admin'
  before_filter :require_admin_user

  private

  def require_admin_user
    redirect_to '/auth/google_oauth2' unless (current_user && current_user.admin?)
  end

  helper_method def current_user
    @current_user ||= User.find(session[:user_id])
  rescue
    nil
  end
end
