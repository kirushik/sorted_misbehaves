class PostsController < ApplicationController
  def index
    @posts = Post.references(:user).includes(:user).sorted(order: 'users.name ASC')
  end
end
