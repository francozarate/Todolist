require 'test_helper'

class TasklistsControllerTest < ActionController::TestCase
  setup do
    @tasklist = tasklists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasklists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tasklist" do
    assert_difference('Tasklist.count') do
      post :create, tasklist: { category: @tasklist.category, date_todo: @tasklist.date_todo, is_completed: @tasklist.is_completed, name: @tasklist.name }
    end

    assert_redirected_to tasklist_path(assigns(:tasklist))
  end

  test "should show tasklist" do
    get :show, id: @tasklist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tasklist
    assert_response :success
  end

  test "should update tasklist" do
    patch :update, id: @tasklist, tasklist: { category: @tasklist.category, date_todo: @tasklist.date_todo, is_completed: @tasklist.is_completed, name: @tasklist.name }
    assert_redirected_to tasklist_path(assigns(:tasklist))
  end

  test "should destroy tasklist" do
    assert_difference('Tasklist.count', -1) do
      delete :destroy, id: @tasklist
    end

    assert_redirected_to tasklists_path
  end
end
