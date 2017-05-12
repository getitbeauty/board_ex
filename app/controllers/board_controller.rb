class BoardController < ApplicationController
  def index
    @everypost = Post.all
  end

  def write
  end

  def create
    new_post = Post.new
    new_post.title = params[:input_title]
    new_post.content = params[:input_content]
    new_post.save
    
    redirect_to "/index"
  end 

  def edit
    @one_post = Post.find(params[:post_id])
  end

  def update
    @one_post = Post.find(params[:post_id])
    @one_post.title = params[:input_title]
    @one_post.content = params[:input_content]
    @one_post.save
    
    redirect_to "/index"
  end

  def destroy
    @one_post = Post.find(params[:post_id])
    @one_post.destroy
    redirect_to "/index"    
  end
end
