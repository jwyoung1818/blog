
class BlogsController < ApplicationController
   include BlogsHelper
   def show
      for i in 1..5
         @user = User.includes(:blogs).first
      end
      Blog.blogByCategory('admin')
      render 'show'
   end
end

