class BlogsController < ApplicationController
   include ActionView::Helpers::UrlHelper
   respond_to :js, :json, :html
   def index
      #Rails.logger.debug "----Out #{params}"
      @user = User.first
      @count = @user.blogs.count
      @users = User.all
      @blogs = Blog.all.paginate(:page => params[:page], :per_page => 5) 
   end
end
