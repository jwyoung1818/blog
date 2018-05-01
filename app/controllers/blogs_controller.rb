class BlogsController < ApplicationController
   include BlogsHelper
   respond_to :js, :json, :html
   def index
      Rails.logger.debug "----Out #{params}"
      render :nothing => true
      [1].each do
        	user = User.first
      	user.blogs.size
      	user.blogs.count
      end
   end
   def show
      for i in 1..5
         @users = User.limit(5)
         link_to i
      end      
      @blogs = Blog.paginate(:page => params[:page], :per_page => 5)
      blog = Blog.first
      blog.id
      Blog.find(blog.id, blog.created_at)
      blog.reload
      render 'show'
      blog.reload
   end
end

