json.extract! answer, :id, :content, :post_time, :last_edit, :user_id, :question_id, :created_at, :updated_at
json.url answer_url(answer, format: :json)