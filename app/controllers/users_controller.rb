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
        if user.save 
            render json: user 
        else 
            render json: { error: "There was a problem creating user" }
        end 
    end 

    def update 
        user = User.find(params[:id])
        if user 
            user.update(user_params)
            render json: user 
        else 
            render json: { error: "There was a problem updating user" } 
        end 
    end 

    def destroy 
        user = User.find(params[:id]) 
        if user 
            user.destroy 
            render json: { message: "Deleted user" } 
        else 
            render json: { error: 'There was a problem deleting user' } 
        end 
    end 

    private 

    def user_params 
        params.permit(:name, :email)
    end 
end
