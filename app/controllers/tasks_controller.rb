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
  end

  def update
  end

  def destroy
  end

  def mark_complete
    task.status == "complete"
  end
end
