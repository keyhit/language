class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def langs
    @langs ||= Lang.all
  end
  helper_method :langs

  def categories
    @categories ||= Category.all
  end
  helper_method :categories

  def category_words
    @category_words ||= Category.find(current_user.category_id)
  end
  helper_method :category_words

  def user_collecor
    @current_user ||= User.find(current_user.id)
    @user_collecor ||= @current_user.collects
  end
  helper_method :user_collecor

  # Receive flag icon for user.translate_to
  def translate_to_flag
    @translate_to_flag ||= Lang.where(id: current_user.translate_to)
  end
  helper_method :translate_to_flag

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:lang_id, :translate_to])
  end
end
