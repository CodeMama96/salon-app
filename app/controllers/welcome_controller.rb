class WelcomeController < ApplicationController
    before_action :user_authenticated, only: [:home]
    def home
       @user = User.new
    end


    private

    def user_authenticated
        if logged_in?
        return redirect_to logout_path
        end
    end
end