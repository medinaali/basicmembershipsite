require 'test_helper'

class IdeasControllerTest < ActionController::TestCase
 def setup
  @idea = Idea.new(Title: "Apple", Idea_Description: "Apple is a fruit", Skill_Description: "Healthy")
end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ideas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create idea" do
    assert_difference('Idea.count') do
      post :create, idea: { idea_description: @idea.idea_description, skill_description: @idea.skill_description, title: @idea.title }
    end

    assert_redirected_to idea_path(assigns(:idea))
  end

  test "should show idea" do
    get :show, id: @idea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @idea
    assert_response :success
  end

  test "should update idea" do
    patch :update, id: @idea, idea: { idea_description: @idea.idea_description, skill_description: @idea.skill_description, title: @idea.title }
    assert_redirected_to idea_path(assigns(:idea))
  end

  test "should destroy idea" do
    assert_difference('Idea.count', -1) do
      delete :destroy, id: @idea
    end

    assert_redirected_to ideas_path
  end
end
