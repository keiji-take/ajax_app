class PostsController < ApplicationController

  def index
    @posts = Post.all.order(id: "DESC")
    
  end
  def create
    post = Post.create(content: params[:content], checked: false)
    render json:{post: post}
  end
  def checked
    # 既読したメモのidが欲しいので該当するレコードを取得
    post = Post.find(params[:id])
    if post.checked
      post.update(checked: false)
    else
      post.update(checked: true)
    end
    # 変更したレコードを取得
    item = Post.find(params[:id])
    # JSON形式でchecked.jsに返却
    render json: {post: item}
  end

end

