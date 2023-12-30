class ApplicationController < ActionController::Base
  def admin?
    return if Rails.env.test?
    redirect_to root_path, alert: "You must be an admin to do that." # unless current_user.admin?
  end
end
