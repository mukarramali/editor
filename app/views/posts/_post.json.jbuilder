json.extract! post, :id, :title, :content, :content_type, :created_at, :updated_at
json.url post_url(post, format: :json)
