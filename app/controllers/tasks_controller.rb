require 'date'
class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.name = params[:task][:name]
    @task.description = params[:task][:description]
    @task.completion_date = params[:task][:completion_date]

    @task.save
    redirect_to('/tasks')
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(name: params[:task][:name], description: params[:task][:description], completion_date: params[:task][:completion_date])
    task.save
    redirect_to('/tasks')
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to('/tasks')
  end

  def mark_complete
    @task = Task.find(params[:id])
    @task.status = false
    @task.save
    redirect_to tasks_path
  end

  def unmark_complete
    @task = Task.find(params[:id])
    @task.status = true
    @task.save
    redirect_to tasks_path
  end
end
