class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    if params[:back]
      render :new
    else
      if @post.save
        redirect_to posts_path
      else
        render :new
      end
    end
  end
  def confirm
    @post = Post.new(blog_params)
    render :new if @post.invalid?
  end
  private
  def post_params
    params.require(:post).permit(:content)
  end
end
