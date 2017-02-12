json.extract! article, :id, :title, :content, :post_time, :last_edit, :tags, :user_id, :created_at, :updated_at
json.url article_url(article, format: :json)