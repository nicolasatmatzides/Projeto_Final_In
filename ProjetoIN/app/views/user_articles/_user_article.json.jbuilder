json.extract! user_article, :id, :user_id, :article_id, :created_at, :updated_at
json.url user_article_url(user_article, format: :json)