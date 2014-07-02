class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :locale, :site

  before_action :set_locale

  def set_locale
    site = params[:site]

    case site
    when "cl"
      I18n.locale = :'es-CL'  
    when "mx"
      I18n.locale = :'es-MX' 
    else
      I18n.locale = :en 
    end
    
  end

  def locale
    I18n.locale.downcase
  end

  def site
    params[:site]
  end
end
