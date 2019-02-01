class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    # @post = Post.create(title: params[:post][:title], description: params[:post][:description])
  end

  def create
  Post.create(title: params[:post][:title], description: params[:post][:description])
  redirect_to posts_path
end

end
