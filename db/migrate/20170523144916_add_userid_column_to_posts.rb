class AddUseridColumnToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :add_column, :string
    add_column :posts, :user_id, :string
  end
end
