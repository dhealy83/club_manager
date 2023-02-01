json.extract! home_post, :id, :title, :description, :created_at, :updated_at
json.url home_post_url(home_post, format: :json)
