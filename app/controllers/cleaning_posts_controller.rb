#require "user.rb"

class CleaningPostsController < ApplicationController
  def new
    @cleaning_post = CleaningPost.new
  end

  def index
    @cleaning_posts = CleaningPost.all
    @users = User.all
  end

  def create
    cleaning_post = current_user.cleaning_posts.new(cleaning_post_params)
    cleaning_post.save!
    redirect_to root_url
  end

  def edit
    @cleaning_post = current_user.cleaning_posts.find(params[:id])
  end

  def update
    cleaning_post = current_user.cleaning_posts.find(params[:id])
    cleaning_post.update!(cleaning_post_params)
    redirect_to root_url
  end

  def destroy
    cleaning_post = CleaningPost.find(params[:id])
    cleaning_post.destroy
    redirect_to root_url
  end

  private
  
  def cleaning_post_params
    params.require(:cleaning_post).permit(:place_id, :description, :required_time_id)
  end

end
