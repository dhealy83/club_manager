json.extract! tournament, :id, :title, :date, :location, :description, :created_at, :updated_at
json.url tournament_url(tournament, format: :json)
