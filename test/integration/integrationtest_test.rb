require 'test_helper'

class IntegrationtestTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
test "login and browse site" do
    # User david logs in
    david = login(:david)
 
 
    # Both are now available in different sessions
    assert_equal 'Welcome david!', david.flash[:notice]
    
 
    # User david can browse site
    david.browses_site
    # User guest can browse site as well

 
    # Continue with other assertions
  end
 
  private
 
    module CustomDsl
      def browses_site
        get "/products/all"
        assert_response :success
        assert assigns(:products)
      end
    end
 
    def login(user)
      open_session do |sess|
        sess.extend(CustomDsl)
        u = users(user)
        sess.https!
        sess.post "/login", username: u.username, password: u.password
        assert_equal '/welcome', sess.path
        sess.https!(false)
      end
    end
end
