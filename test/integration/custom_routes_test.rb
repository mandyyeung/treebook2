require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that /signin route opens the sign in page" do 
  	get '/signin'
  	assert_response :success
  end

    test "that /signout route opens the sign out page" do 
  	get '/signout'
  	assert_response :redirect
  	assert_redirected_to '/'
  end

    test "that /register route opens the register page" do 
  	get '/register'
  	assert_response :success
  end

  test "that a profile page works" do
    get '/mandyyeung'
    assert_response :success
  end
end
