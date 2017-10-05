class TasksController < ApplicationController
   def index
    @task = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    new_task = Task.create(task_params)
    if new_task.save
      redirect_to new_task
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    if task.update(task_params)
      redirect_to task
    else
      render :edit
    end
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to tasks_url
  end

  protected
  def task_params
    params.require(:task).permit(:item)
  end
end
