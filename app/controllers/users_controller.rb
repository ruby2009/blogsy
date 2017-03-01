class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
   @user = User.new(user_params)
   if @user.save
     render json: @user
   else
     render json: @user.errors.full_messages, status: 400
   end

  end

  def users_posts
    @posts = Post.where(user: params[:id])
    render json: @posts
  end

  private

  def user_params
    params.permit(:username, :email, :bio)
  end

end
