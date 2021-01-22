class SessionsController < ApplicationController
  
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
            render :new
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to signin_path
    end
end