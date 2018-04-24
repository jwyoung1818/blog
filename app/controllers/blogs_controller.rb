
class BlogsController < ApplicationController
   include BlogsHelper
   def show
      for i in 1..5
         @users = User.limit(5)
	     link_to 'test'
      end
      render 'show'
@blogs = @blogs.paginate(:page => params[:page], :per_page =>5)
      Blog.where(id: 1).first
      @blogs.reload
      puts 1
      @blogs.reload
   end
end

