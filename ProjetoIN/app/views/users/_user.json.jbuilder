json.extract! user, :id, :password_digest, :email, :name, :admin, :member_since, :last_time, :description, :created_at, :updated_at
json.url user_url(user, format: :json)