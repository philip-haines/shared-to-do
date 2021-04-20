class UserTasksController < ApplicationController
    def index
        @user_tasks = UserTask.all 
        render json: @user_tasks, include: [:user, :task]
    end

    def show
        @user_task = UserTask.find(params[:id])
        render json: @user_task,   include: [:user, :task]
    end

    def create
        @new_user_task= UserTask.create(
            user_id: params[:user_id],
            task_id: params[:task_id],
            completed: params[:completed],
            notes: params[:notes],
        )

        render json: @new_user_task
    end

    def update
        @user_task = UserTask.find(params[:id])
        @user_task.update(
            user_id: params[:user_id],
            task_id: params[:task_id],
            completed: params[:completed],
            notes: params[:notes],
        )

        render json: @user_task
    end

    def destroy
        @user_task = UserTask.find(params[:id])
        @user_task.delete
    end
end
