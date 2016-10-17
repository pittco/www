class AdminController < ApplicationController
  layout 'admin'
  before_filter :require_admin_user

  private

  def require_admin_user
    redirect_to '/auth/google_oauth2' unless (current_user && current_user.admin?)
  end

end
