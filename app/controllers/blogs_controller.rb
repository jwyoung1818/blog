
class BlogsController < ApplicationController
   include BlogsHelper
   def show
      for i in 1..5
         @users = User.limit(5)
      end
      @blogs = Blog.paginate(:page => params[:page], :per_page => 5)
      render 'show'
   end
end

