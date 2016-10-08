class CommentsChannel < ApplicationCable::channel

  def subscribed
    post = Post.find(params[:id])
      stream_for post
  end
end
