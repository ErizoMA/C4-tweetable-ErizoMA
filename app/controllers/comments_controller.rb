class CommentsController < ApplicationController
  def index; end

  def show; end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(body: params[:body])
    @comment.user = current_user
    if @comment.create
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
