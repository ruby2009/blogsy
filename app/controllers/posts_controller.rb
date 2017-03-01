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

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    render status: 200
  end

end
