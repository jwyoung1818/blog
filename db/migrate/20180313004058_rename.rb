class Rename < ActiveRecord::Migration
  def change
	rename_column :blogs, :type, :category

  end
end
