class PostBroadcastJob < ApplicationJob

  def perform(post)
    ActionCable.server.broadcast "posts:#{post.id}",
      post: { content:  post.content, id: post.id}
  end

end