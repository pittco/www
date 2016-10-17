class UserHomeController < ApplicationController
  before_filter :require_user

  def index
  end

  private

  def require_user
    redirect_to '/auth/google_oauth2' unless current_user
  end

end
