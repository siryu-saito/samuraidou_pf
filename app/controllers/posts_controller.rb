class PostsController < ApplicationController

  def new
    @post = Post.new
    @post.post_images.build
  end

  def create
    post = current_user.posts.build(post_params)
    post.save
    redirect_to posts_path
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post_path(post.id)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to new_post_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :place, :text,
                                 :description, post_images_images: [])
  end

end