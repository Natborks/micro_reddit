class ChangeColumnNames < ActiveRecord::Migration[5.0]
  def change
  	rename_column :comments, :user_id_id, :user_id
  	rename_column :comments, :post_id_id, :post_id
  end
end
