class AddForeignKeyUsertoBlog < ActiveRecord::Migration
  def change
	add_column :blogs, :user_id, :integer
	add_foreign_key :blogs, :users
  end
end
