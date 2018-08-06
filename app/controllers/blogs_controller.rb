class BlogsController < ApplicationController
   include BlogsHelper
   include ActionView::Helpers::UrlHelper
   respond_to :js, :json, :html
   def index
      #Rails.logger.debug "----Out #{params}"
      @user = User.first
      @count = @user.blogs.count
      user = User.where(id:1).first
      sum = User.pluck(:id).sum
      if User.where(id: 1).exists?
        user = User.find_by(id: 1)
      else
        user = User.create(id:1)
      end
      ids = User.pluck(:id)
      ids.sum
   end
   def create   
      f = open("request.log", 'w+')
      f.write(params[:data_value])
      f.close
      render :nothing => true, :status => 200, :content_type => 'text/html'
   end
   def count_stats
      @count2 = User.second.blogs.count
      1.times.each do
         User.second.blogs.count
      end
      render :partial => "count2"
   end

   def show
      size = 5
      @users = User.all
      a = 5
      if a == 5
         @blogs = Blog.all.paginate(:page => params[:page], :per_page => 5) 
      end         
      b = Blog.first 
      b.id
      Blog.find(b.id)
      b.reload
      render 'show'
      b.reload
   end
end
