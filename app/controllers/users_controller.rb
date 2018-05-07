class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to '/users'
    end

    def destroy
        User.find(params[:id]).destroy
        redirect_to '/users'
    end

    def new 
        @user = User.new
    end

    def create 
        User.create(user_params)
        redirect_to '/users'
    end

    def user_params
        params.require(:user).permit(:username, :email, :password, :role, :userpic, :id)
    end
end

