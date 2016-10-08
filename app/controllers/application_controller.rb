class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def index
      CommentsChannel.broadcast_to(@post, @comment)
  end
end
