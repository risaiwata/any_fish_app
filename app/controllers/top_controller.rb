class TopController < ApplicationController

  def index
    @agent = current_agent
    @blogs = Blog.all.order(created_at: :desc)
  end

  def show
    @blog = Blog.find(params[:id])
  end
  
end
