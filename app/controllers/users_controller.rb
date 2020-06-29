class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
        user = User.new(user_params)
        user.save
        byebug
        render json: user
    end

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: user
        else 
            render json: {errors: 'Sorry, invalid name or password'}
        end 
    end

    private def user_params
        params.require(:user).permit(:username, :password, :email)
    end
end
