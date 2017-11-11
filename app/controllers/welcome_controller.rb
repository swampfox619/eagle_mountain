class WelcomeController < ApplicationController
  def home
    @posts = Post.all
    @post = Post.last
  end

  def about
  end

  def packages
  end

  def features
  end

  def portfolio
  end

  def blog
    @posts = Post.all
    @post = Post.last
  end

  def contact
  end
end
