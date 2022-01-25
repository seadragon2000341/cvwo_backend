class Api::TasksController < ApplicationController
    def index
      task = Task.all.order(name: :asc)
      render json: task
    end
  
    def create
      task = Task.create!(task_params)
      if task
        render json: task
      else
        render json: task.errors
      end
    end
  
    def update
      if task.update(task_params)
        render json: task
      else
        render json: task.errors
      end
    end
  
    def destroy
      task&.destroy
      render json: task
   
    end
    private
  #only allow for a list of trusted params
    def task_params
       params.permit(:date, :name, :description, :created_at, :updated_at, :id, :completed, :task, tags:[])
      end
    def task
       @task ||= Task.find(params[:id])
      end
  end
  