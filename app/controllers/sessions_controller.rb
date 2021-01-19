class SessionsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.find_by_name(params[:user][:name])
        #byebug
        if @user && @user.authenticate(params[:user][:password])
         
            session[:user_id] = @user.id #logs them in
            redirect_to users_path(@user)
        else
      
            render :new
        end
    end

    def destroy
        session.destroy
        redirect_to signin_path
    end
end