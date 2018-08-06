 class RequestsController < ApplicationController
  def request_handle   
      f = open("request.log", 'w+')
      f.write(params[:data_value])
      f.close
      render :nothing => true, :status => 200, :content_type => 'text/html'
   end
end