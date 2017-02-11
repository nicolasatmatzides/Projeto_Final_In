json.extract! question, :id, :title, :content, :date, :views, :url, :user_id, :created_at, :updated_at
json.url question_url(question, format: :json)