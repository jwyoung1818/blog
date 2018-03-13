
class BlogsController < ApplicationController
   include BlogsHelper
   def show
      @user = User.includes(:blogs).first
      Blog.blogByCategory('admin')
      render 'show'
   end
end

