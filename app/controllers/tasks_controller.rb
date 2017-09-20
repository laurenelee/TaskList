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
    # need to make TASK not BOOK
    # task = Task.new(title: params[:book][:title], author: params[:book][:author])
  end

  def create
  end

  def update
  end

  def destroy
  end

  def mark_complete
    task.status == "complete"
  end

  def complete
    @task = current_user.tasks.find(params[:id])
    @task.completed = true
    @task.save
    redirect_to tasks_path
  end
end
