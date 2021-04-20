class TasksController < ApplicationController
        def index
        @tasks = Task.all 
        render json: @tasks, include: [:community]
    end

    def show
        @task = Task.find(params[:id])
        render json: @task,  include: [:community]
    end

    def create
        @new_task= Task.create(
            community_id: params[:community_id],
            title: params[:title],
            description: params[:description],
            priority: params[:priority],
            assigned: params[:assigned]
        )

        render json: @new_task
    end

    def update
        @task = Task.find(params[:id])
        @task.update(
            community_id: params[:community_id],
            title: params[:title],
            description: params[:description],
            priority: params[:priority],
            assigned: params[:assigned]
        )

        render json: @task
    end

    def destroy
        @task = Task.find(params[:id])
        @task.delete
    end

    
end
