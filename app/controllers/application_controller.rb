class ApplicationController < ActionController::Base
    #rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def current_user
        return unless session[:user_id]
        @current_user ||= User.find(session[:user_id])
    end

    helpers do
        def logged_in?
            !!current_user
        end
    end

    private
 
    # def record_not_found
    #   render text: "404 Not Found", status: 404
    # end



end
