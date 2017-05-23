require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  should "name should be present" do
  		@user.name = " " * 6
  		assert_not @user.valid?
  end
end
