class TasksController < ApplicationController
  before_action :find_task_list, only: %i[new create]

  def new
    @task = @task_list.tasks.build
  end

  def create
    result = @task_list.tasks.create(permitted_params)

    redirect_to task_lists_path, notice: 'Task created'
  end

  def update
    task = Task.find(params[:id])

    task.update(completed: !task.completed)

    redirect_to task_lists_path, notice: 'Task updated'
  end

  def destroy
    task = Task.find(params[:id])

    task.destroy

    redirect_to task_lists_path, notice: 'Task deleted'
  rescue => e
    Rails.logger.info(e.message)

    redirect_to task_lists_path, notice: 'Task deleted'
  end

  private

  def permitted_params
    params.require(:task).permit(:description, :complete)
  end

  def find_task_list
    @task_list = TaskList.find(params[:task_list_id])
  end
end
