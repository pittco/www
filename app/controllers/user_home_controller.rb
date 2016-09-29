class UserHomeController < ApplicationController
  layout 'admin'
  before_filter :require_user

  def index
    render inline: "Hi!"
  end

  private

  def require_user
    redirect_to '/auth/google_oauth2' unless current_user
  end

end
