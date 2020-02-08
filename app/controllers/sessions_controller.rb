class SessionsController < ApplicationController
    def new
    end
    
    def create
        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:message] = "Incorrect username or password"
            redirect_to signin_path
        end
    end

    def destroy
        if session[:user_id] != nil
            session.delete :user_id
        end
        redirect_to root_url
    end
end
