
class BlogsController < ApplicationController
   include BlogsHelper
   def show
      for i in 1..5
         @users = User.includes(:blogs).limit(5)
      end
      @blogs = Blog.blogByCategory('admin')
      render 'show'
   end
end

