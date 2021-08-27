class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(body: params[:body])
    @comment.user = User.first
    if @comment.save
      redirect_to root_path
    else
      render :new
    end
  end
end
