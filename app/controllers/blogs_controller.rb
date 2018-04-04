
class BlogsController < ApplicationController
   include BlogsHelper
   def show
      for i in 1..5
         @users = User.limit(5)
      end
      @blogs = Blog.blogByCategory('admin')
      render 'show'
   end
end

