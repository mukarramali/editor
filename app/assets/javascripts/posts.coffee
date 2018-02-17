App.posts = App.cable.subscriptions.create "PostsChannel",
  post_content: -> $("#post_area")

  connected: ->
    # FIXME: While we wait for cable subscriptions to always be finalized before sending messages
    setTimeout =>
      @followCurrentPost()
      @installPageChangeCallback()
    , 1000

  received: (data) ->
    @post_content().val(data.post.content)

  followCurrentPost: ->
    if postId = @post_content().data('post-id')
      @perform 'follow_post', post_id: postId
    else
      @perform 'unfollow_post'

  installPageChangeCallback: ->
    unless @installedPageChangeCallback
      @installedPageChangeCallback = true
      $(document).on 'turbolinks:load', -> App.posts.followCurrentPost()
