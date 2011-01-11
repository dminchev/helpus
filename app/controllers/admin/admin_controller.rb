class Admin::AdminController < ApplicationController
  layout "admin"
  before_filter :verify_admin
  private
  def verify_admin
    redirect_to root_url unless current_user.role == "admin"
  end
end
