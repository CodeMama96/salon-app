class UsersController < ApplicationController
    before_action :redirect_if_not_signed_in, only: [:show, :edit, :update, :delete]
    def index
    end

    def from_omniauth
        @user = User.new
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
            if @user.save
                session[:user_id] = @user.id
                redirect_to user_path(@user)
            else
                render :new
            end
    end
    
    def show
        @user = User.find(params[:id])
    end

    private

    def user_params
        params.require(:user).permit(
            :name,
            :password,
            :email)
    end
end
