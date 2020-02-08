class UsersController < ApplicationController
    def home
    end
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to "/users/#{@user.id}"
        else
            flash[:message] = @user.errors
            redirect_to "/users/new"
        end
    end
     
    def show
        @user = current_user
        if @user.nil?
            redirect_to root_url
        end
    end

    def edit
        @user = current_user
    end

    def update
        @user = current_user
        if @user.update(user_params)
            redirect_to user_path(@user)
        else
            flash[:message] = @user.errors
            redirect_to edit_user_path(@user)
        end
    end

    private
     
    def user_params
        params.require(:user).permit(:name, :password, :city, :state, :email)
    end
end
