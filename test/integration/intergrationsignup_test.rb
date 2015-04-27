require 'test_helper'

class IntergrationsignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
 
  test "Signing up users" do
  	get "/signup"
  	assert_response :success
  	assert_template :new


  	post_via_redirect users_path, user: { name:  "Example User",email: "user@example.com", password: "password", password_confirmation: "password" }
    assert_response :success
    assert_template "users/show"
    assert_template  "layouts/_navigation_links_left"
    assert_template "layouts/_navigation_links_right"
    assert_template "layouts/_navigation"
    assert_template "layouts/_messages"
    assert_template "layouts/application"
  end
end
