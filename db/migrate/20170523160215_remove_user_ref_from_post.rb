class RemoveUserRefFromPost < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :user, :refernces
  end
end
