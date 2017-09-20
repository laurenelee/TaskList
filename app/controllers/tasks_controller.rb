require 'date'
class TasksController < ApplicationController
  def index
    @tasks = Task.all
    # old hard coded data:
    # @tasks = [
    #   {title: 1, description: "grocery shop", due_date: "09/20/2017", status: "incomplete"},
    #   {title: 2, description: "wash car", due_date: "09/21/2017", status: "incomplete"},
    #   {title: 3, description: "code", due_date: "09/19/2017", status: "complete"}
    # ]
  end

  def edit
  end

  def new
  end

  def create
    task = Task.new(name: params[:task][:name], description: params[:task][:description], completion_date: params[:task][:completion_date])
    task.save
    redirect_to('/tasks')
  end

  def update
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to('/tasks')
  end

  def mark_complete
    @task = Task.find(params[:id])
    @task.status = false
    # logic should it delete it then? or strikethru?
    @task.save
    redirect_to tasks_path
  end
end
