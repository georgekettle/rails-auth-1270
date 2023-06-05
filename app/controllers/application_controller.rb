class ApplicationController < ActionController::Base
    before_action :authenticate_user! # user needs to be logged in
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
end
