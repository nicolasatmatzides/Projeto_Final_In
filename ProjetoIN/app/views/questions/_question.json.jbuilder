json.extract! question, :id, :title, :content, :post_time, :last_edit, :tags, :user_id, :created_at, :updated_at
json.url question_url(question, format: :json)