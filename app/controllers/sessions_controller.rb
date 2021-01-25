class SessionsController < ApplicationController
    before_action :user_authenticated, only: [:new]
    skip_before_action :verify_authenticity_token

    def omniauth
        user = User.from_omniauth(request.env['omniauth.auth'])
        if user.valid?
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            redirect_to '/signin'
        end
    end 

    def new
        @user = User.new
    end

    def create
        @user = User.find_by_email(params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id #logs them in
            redirect_to user_path(@user)
        else
            redirect_to '/signin'
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to signin_path
    end

    private

    def user_authenticated
        if logged_in?
        return redirect_to logout_path
        end
    end
end