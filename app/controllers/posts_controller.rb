class PostsController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def show_comments
    @comments = Comment.where(post: params[:id])
    render json: @comments
  end

end
