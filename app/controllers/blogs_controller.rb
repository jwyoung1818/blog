
class BlogsController < ApplicationController
   include BlogsHelper
   def show
      for i in 1..5
         @user = User.includes(:blogs).first
      end
      @user2 = User.includes(:blogs).second
      @user3 = User.includes(:blogs).third
      Blog.blogByCategory('admin')
      render 'show'
   end
end

