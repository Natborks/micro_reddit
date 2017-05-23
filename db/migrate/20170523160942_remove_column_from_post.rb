class RemoveColumnFromPost < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :add_column, :string
  end
end
