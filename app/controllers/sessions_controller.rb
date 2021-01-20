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