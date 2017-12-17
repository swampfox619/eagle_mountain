class WelcomeController < ApplicationController
  def home
    @posts = Post.all
    @post = Post.last
    @meta_title = "Eagle Mountain Digital"
  end

  def blog
    @posts = Post.all
    @post = Post.last
  end

end
