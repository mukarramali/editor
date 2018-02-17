class EditorUpdatesChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def follow_post(data)
    stop_all_streams
    stream_from "posts:#{data['post_id'].to_i}"
  end

  def unfollow_post
    stop_all_streams
  end
end
