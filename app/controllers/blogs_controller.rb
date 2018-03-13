class BlogsController < ApplicationController
   def show
      for i in 1..8
        @blog = Blog.retrieve(params[:bid])
      end
      render 'show'
   end
end

