class PostBroadcastJob < ApplicationJob

  def perform(post)
    ActionCable.server.broadcast "posts:#{post.id}",
      post: { content:  post.content, id: post.id, updated_by: post.updated_by}
  end

end