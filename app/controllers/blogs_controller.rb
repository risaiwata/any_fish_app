class BlogsController < ApplicationController

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @blog = Blog.all
    @blogs = Blog.includes(:agent).page(params[:page]).per(4).order(created_at: :desc)
    respond_to do |format|
      format.html
      format.js if request.xhr?
    end
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    blog = Blog.find(params[:id])
    blog.update(blog_params)
  end

  def destroy
    blog = Blog.find(params[:id])
    blog.destroy
  end

  private
  def blog_params
    params.require(:blog).permit(:blog_title, :blog_text, :image).merge(agent_id: current_agent.id)
  end

end
