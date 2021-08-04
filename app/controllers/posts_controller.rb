class PostsController < ApplicationController
  before_action :ensure_correct_user, only: [:edit, :update, :destroy]

  def new
    @post = Post.new
    @post.post_images.build
    @posts = Post.page(params[:page]).per(8).order(created_at: :desc)
  end

  def create
    post = Post.new(post_params)
    post.user_id = current_user.id
    if post.save
      redirect_to new_post_path(anchor: 'saikabu')
    else
      flash[:flash] = "正しく入力してください"
      redirect_to new_post_path
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.all.order(created_at: :desc)
  end

  def edit
    @post = Post.find(params[:id])
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

  def search
    @posts = Post.search(params[:keyword])
    @keyword = params[:keyword]
    render "index"
  end

  private

  def post_params
    params.require(:post).permit(:title, :address, :text,
                                 :rate, post_images_images: [])
  end

  def ensure_correct_user
    @post = Post.find(params[:id])
    unless @post.user == current_user
      redirect_to new_post_path
    end
  end
end