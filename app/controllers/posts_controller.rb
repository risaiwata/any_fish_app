class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @posts = Post.all
  end

  private
  def post_params
    params.require(:post).permit(:post_title, :result_date,:fish, :size, :weight, :count, :prefecture,:lure, :reel, :rod, :weather, :result_text, :tag_list, :image).merge(angler_id: current_angler.id)
  end
end

