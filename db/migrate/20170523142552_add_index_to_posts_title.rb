class AddIndexToPostsTitle < ActiveRecord::Migration[5.0]
  def change
  	add_index :posts, :title, unique: true
  end
end
