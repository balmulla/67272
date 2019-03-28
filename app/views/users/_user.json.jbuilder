json.extract! user, :id, :bank_id, :name, :password_digest, :email, :phone, :created_at, :updated_at
json.url user_url(user, format: :json)
