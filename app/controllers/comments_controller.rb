class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/records/#{comment.record.id}"
  end

  def destroy
    @record = Record.find(params[:id])
    @comment = Comment.find(params[:record_id])
    if @comment.destroy
      redirect_to record_path(@record.id)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, record_id: params[:record_id])
  end
end
