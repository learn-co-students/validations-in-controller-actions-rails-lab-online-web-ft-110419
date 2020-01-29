class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @post = set_post!
    if @post.update(post_params)
      redirect_to post_path(@post)
    else 
      render :'posts/edit'
    end
  end

  def create
    @post = Post.new(params.require(:post).permit(:category, :content, :title))
    if @post.save
      redirect_to post_path(@post)
    else 
      render :'posts/new'
    end
  end 
  
  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
