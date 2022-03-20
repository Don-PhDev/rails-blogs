class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post

  def create
    comment = @post.comments.new(comment_params)
    comment.user = current_user

    if comment.save
      flash[:notice] = "Your comment is successfully posted"
      redirect_to post_path(@post)
    else
      flash[:alert] = "Comment failed to post: #{comment.errors.full_messages.to_sentence}"
      redirect_to post_path(@post)
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
