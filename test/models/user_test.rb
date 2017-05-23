require 'test_helper'

class UserTest < ActiveSupport::TestCase

	def setup
		@user = User.new(name: "Example User")
	end

 test "should be valid" do
 	assert @user.valid?
 end
  
 test "name should be present" do
  		@user.name = " " * 6
  		assert_not @user.valid?
  end

  test "name should not be too long" do
  		too_long_name = "a" * 55 + "BK"
  		@user.name = too_long_name
  		assert_not @user.valid?
  end

  test "name should be unique" do
  		new_user = @user.dup
  		new_user.name = @user.name.upcase
  		@user.save
  		assert_not new_user.valid?
  end

end
