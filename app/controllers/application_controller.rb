class ApplicationController < ActionController::Base
  before_action :set_i18n_locale_from_params
  protect_from_forgery with: :exception
  include SessionsHelper

  protected
    def set_i18n_locale_from_params
      if params[:locale]
        if I18n.available_locales.map(&:to_s).include?(params[:locale])
          I18n.locale = params[:locale]
        else
          flash.now[:notice] = "#{params[:locale]}translation is not avaliable"
          logger.error flash.now[:notice]
        end
      end
    end
end

