class AddIndextToPostsContent < ActiveRecord::Migration[5.0]
  def change
  	add_index :posts, :content, unique: true
  end
end
