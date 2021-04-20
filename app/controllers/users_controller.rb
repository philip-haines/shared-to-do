class UsersController < ApplicationController
    def index
        @users = User.all 
        render json: @users, :include => [:tasks, :communities => {:include => [:tasks, :users => {:include => :tasks}]}]
    end

    def show
        @user= User.find(params[:id])
        render json: @user, :include => [:tasks, :communities => {:include => [:tasks, :users => {:include => :tasks}] }]
    end

    def create
        @new_user= User.create(
            name: params[:name],
            email: params[:email],
            username: params[:username],
            password: params[:password],
            pin: params[:pin],
            admin: params[:admin]
        )

        render json: @new_user
    end

    def update
        @user= User.find(params[:id])
        @user_.update(
            user_id: params[:user_id],
            completed: params[:completed],
            notes: params[:notes],
        )

        render json: @user
    end

    def destroy
        @user= User.find(params[:id])
        @user.delete
    end
end
