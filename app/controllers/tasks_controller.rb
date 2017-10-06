class TasksController < ApplicationController
   def index
    @task = current_user.tasks
  end

  def show
    @task = current_user.tasks.find(params[:id])
  end

  def new
    @task = current_user.tasks.new
  end

  def create
    new_task = current_user.tasks.create(task_params)
    if new_task.save
      redirect_to new_task
    else
      render :new
    end
  end

  def edit
    @task = current_user.tasks.find(params[:id])
  end

  def update
    task = current_user.tasks.find(params[:id])
    if task.update(task_params)
      redirect_to task
    else
      render :edit
    end
  end

  def destroy
    current_user.tasks.destroy(params[:id])
    redirect_to tasks_url
  end

  protected
  def task_params
    params.require(:task).permit(:item)
  end
end
