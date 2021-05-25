class TopController < ApplicationController

  def index
    @agent = current_agent
    @blogs = Blog.all.order(created_at: :desc).limit(5)
    @posts = Post.all.order(created_at: :desc).limit(5)
  end
  
end
