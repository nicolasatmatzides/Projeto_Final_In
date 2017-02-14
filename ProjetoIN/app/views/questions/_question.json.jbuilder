json.extract! question, :id, :title, :content, :tags, :user_id, :created_at, :updated_at
json.url question_url(question, format: :json)