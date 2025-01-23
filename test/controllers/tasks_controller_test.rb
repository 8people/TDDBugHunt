require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_task_list_task_url(task_list_id: TaskList.first.id)

    assert_response :success
  end

  test "create action should redirect to task_lists#index" do
    params = { task: { description: 'Test task' } }

    post task_list_tasks_url(task_list_id: TaskList.first.id), params: params

    assert_response :redirect
    assert_redirected_to task_lists_path
  end

  test "destroy action should redirect to task_lists#index" do
    task_list = TaskList.first
    task = task_list.tasks.first

    delete task_list_task_url(task_list_id: task_list.id, id: task.id)

    assert_response :redirect
    assert_redirected_to task_lists_path
  end
end
