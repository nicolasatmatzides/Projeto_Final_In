json.extract! comment_article, :id, :article_id, :comment_id, :created_at, :updated_at
json.url comment_article_url(comment_article, format: :json)