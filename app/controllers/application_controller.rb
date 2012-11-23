class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale
  before_filter :verify_rights

  def set_locale
    current_user.nil? ? "en" : I18n.locale = (current_user.locale ||= "en")
  end

  def admin?
    unless current_user.admin
      flash[:error] = "The page you were looking for doesn't exist"
      redirect_to :root
    end
  end
  
  def verify_rights
    Neo::verify_rights(params[:controller],params[:action],current_user)
  end
  
end