class HomesController < ApplicationController
  def about
    @posts = Post.all
  end

  def top

  end
end
