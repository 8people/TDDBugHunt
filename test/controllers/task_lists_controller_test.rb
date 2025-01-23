require "test_helper"

class TaskListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get task_lists_url

    assert_response :success
  end

  test "should get new" do
    get new_task_list_url

    assert_response :success
  end

  test "create action should redirect to task_lists#index" do
    params = { task_list: { name: 'Test task list' } }

    post task_lists_url, params: params

    assert_response :redirect
    assert_redirected_to task_lists_path
  end

  test "destroy action should redirect to task_lists#index" do
    task_list = TaskList.first
    task_list.tasks.destroy_all

    delete task_list_url(task_list)

    assert_response :redirect
    assert_redirected_to task_lists_path
  end
end
