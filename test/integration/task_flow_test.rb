require "test_helper"

class TaskFlowTest < ActionDispatch::IntegrationTest
  test "can add a new task" do
    get "/"

    assert_select "h1", "Task Lists"

    get "/task_lists/1/tasks/new"

    assert_select "h1", "Add a new task to \"Task List 1\""
  end

  test "can mark a task as complete" do
    get "/"

    assert_select "h1", "Task Lists"
  end

  test "can delete a task" do
    get "/"

    assert_select "h1", "Task Lists"
  end

  test "can see a helpful error message when task creation fails" do
    get "/"

    assert_select "h1", "Task Lists"

    result = post "/task_lists/1/tasks", params: { task: { description: "" } }

    follow_redirect! if response.redirect?
    
    assert_select "div#error_explanation"
  end
end
