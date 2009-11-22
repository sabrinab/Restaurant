require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  # Replace this with your real tests.
 test "as an unregistered should get new" do
    @user = User.new({:email=>"n@n.com",:password=>"123"})
    @user.save
    get :new
    assert_response :success
  end


end
