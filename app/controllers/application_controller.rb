class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def langs
    @langs ||= Lang.all
  end
  helper_method :langs

  def user_langs
    @user_langs ||= User.where()
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:lang_id])
  end

end
