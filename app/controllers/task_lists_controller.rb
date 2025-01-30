class TaskListsController < ApplicationController
  def index
    @task_lists = TaskList.all
  end

  def new
    @task_list = TaskList.new
  end

  def create
    TaskList.create(task_list_params)

    redirect_to task_lists_path, notice: 'Task list created'
  end

  def destroy
    task_list = TaskList.find(params[:id])
    task_list.tasks.destroy_all

    task_list.destroy

    redirect_to task_lists_path, notice: 'Task list deleted'
  end

  private

  def task_list_params
    params.require(:task_list).permit(:name)
  end
end
