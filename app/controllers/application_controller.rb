class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!


  protected

  def after_sign_in_path_for(resource)
    pages_dashboard_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
