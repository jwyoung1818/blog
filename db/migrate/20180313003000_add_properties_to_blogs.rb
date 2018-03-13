class AddPropertiesToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :type, :string
    add_column :blogs, :real, :boolean
  end
end
