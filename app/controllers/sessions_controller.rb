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


    # @user = User.find_or_create_from_auth_hash(auth_hash)
    # self.current_user = @user
    # redirect_to '/'
  
    end

    def destroy
        session.destroy
        redirect_to signin_path
    end



#   protected

#   def auth_hash
#     request.env['omniauth.auth']
#   end
end