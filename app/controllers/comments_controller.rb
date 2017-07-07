class CommentsController < ApplicationController
  def index
    @blog = Blog.find(params[:blog_id])
    @comments = @blog.comments.all
    redirect_to blog_path(@blog)
  end

  def new
    @blog = Blog.find_by_id(params[:blog_id])
    @comment = Comment.new(parent_id: params[:parent_id],blog_id: params[:blog_id])
  end

  def create
    if params[:comment][:parent_id].to_i > 0
      @blog = Blog.find(params[:blog_id])
      parent = Comment.find_by_id(params[:comment][:parent_id])
      @comment = parent.children.build(comment_params)
    else
      @blog = Blog.find(params[:blog_id])
      @comment = @blog.comments.new(comment_params)
    end

    if @comment.save
      flash[:success] = 'Your comment was successfully added!'
      redirect_to @blog
    else
      render 'new'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:email, :body, :name, :parent_id, :blog_id)
  end

end