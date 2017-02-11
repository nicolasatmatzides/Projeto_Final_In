json.extract! comment_question, :id, :question_id, :comment_id, :created_at, :updated_at
json.url comment_question_url(comment_question, format: :json)