json.extract! user, :id, :name, :last_name, :email, :phone_number, :inn, :certificate, :created_at, :updated_at
json.url user_url(user, format: :json)
