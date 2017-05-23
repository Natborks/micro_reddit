require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  
  def setup
  	@comment = Comment.new(body: "This is awesome")
  end

  test "should pass comment" do
  	assert_not @comment.valid?
  end

  test "comment should be present" do
  	@comment.body = " " * 6
  	assert_not @comment.valid?
  end
end
