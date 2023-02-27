class PostController < ApplicationController
  def index
  @posts = Post.all
  @myinfos = Myinfo.all
  end

  def new
  end

  def create
    if user_signed_in?
    @post = Post.new
    @post.user_id = current_user.id
    @post.title = params[:post_title]
    @post.introduce = params[:post_introduce]
    @post.content = params[:post_content]
    @post.money = params[:post_money]
    @post.url = params[:post_url]
    @post.save
  redirect_to '/post/index'
    end
  end

  def edit
  @post = Post.find(params[:post_id])
  end

  def update
  @post = Post.find(params[:post_id])
  @post.title = params[:post_title]
  @post.introduce = params[:post_introduce]
  @post.content = params[:post_content]
  @post.money = params[:post_money]
  @post.url = params[:post_url]
  @post.save
  redirect_to '/'
  end

  def destroy
  @post = Post.find(params[:post_id])
  @post.destroy

    redirect_to '/'
  end

  def detail
  @post = Post.find(params[:post_id])
  end
end
