class ApplicationController < ActionController::Base
    include ApplicationHelper 
    def current_user
        return unless session[:user_id]
        @current_user ||= User.find(session[:user_id])
    end


    private

    def redirect_if_not_signed_in
        redirect_to '/signin' if !logged_in?
    end


end
