class CommentsController < ApplicationController

  # GET /comments
  # GET /comments.json
  def index
    @blog = Blog.find(params[:blog_id])
    @comments = @blog.comments.all
    redirect_to blog_path(@blog)
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.new(comment_params)


    if @comment.save
      flash[:notice] = "comment is successfully created!"
    else
      flash[:notice] = "comment is failed to be created!"
    end
    redirect_to blog_path(@blog)

  end

  private


    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:name, :email, :body)
    end
end
