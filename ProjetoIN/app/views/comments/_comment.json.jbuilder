json.extract! comment, :id, :content, :post_time, :last_edit, :user_id, :article_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)