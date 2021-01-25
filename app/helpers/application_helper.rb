module ApplicationHelper

    def logged_in?
        !!current_user
    end

    def current_user
        return unless session[:user_id]
        @current_user ||= User.find(session[:user_id])
    end

end
