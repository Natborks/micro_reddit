require 'test_helper'

class PostTest < ActiveSupport::TestCase

	def setup
		@post =Post.new(title: "Alice", content:"Alice in the wonderland", user_id: 1)
	end

	test "model" do
		assert_not @post.valid?
	end

	test "title should be present" do 
		@post.title = "     "
		assert_not @post.valid?
	end

	test "title should not be too long" do
		@post.title = "a"*55 + "lice"
		assert_not @post.valid?
	end

	test "title should be unique" do
		dup_post = @post.dup
		dup_post.title = @post.title.upcase
		@post.save
		assert_not dup_post.valid?
	end

	#test "title should be saved as lower-case" do
	#	mixed_case_title = "AliCe"
	#    @post.title = mixed_case_title
	#	@post.save
	#	assert_equal mixed_case_title.downcase, @post.reload.title
	#end

	test "post should be present" do 
		@post.content = "       "
		assert_not @post.valid?
	end

	test "post should be unique" do
		duplicate_post = @post.dup
		@post.save
		assert_not duplicate_post.valid?
	end
end
