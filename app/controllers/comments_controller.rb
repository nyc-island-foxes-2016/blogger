class CommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    post.comments.build(content: params[:comment][:content], user: current_user )
    if post.save
      flash[:notice] = 'Thanks for your comment'
    else
      flash[:alert] = "Sorry your comment didn't save"
    end
    redirect_to post_path(post)
  end
end