require 'test_helper'

class IntegrationtestTest < ActionDispatch::IntegrationTest
test "Login user" do
    get login_path
    assert_response :success
    assert_template "sessions/new"
    post_via_redirect login_path, session: {email: "user@example.com", password: "password"}
    get root_path
    assert flash.empty?
    
end
