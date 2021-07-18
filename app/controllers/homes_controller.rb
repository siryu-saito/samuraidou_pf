class HomesController < ApplicationController
  def about
    @posts = Post.all
  end

  def top
    @posts = Post.all
  end
end
