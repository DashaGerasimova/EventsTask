json.extract! event, :id, :title, :event_date, :repeat, :created_at, :updated_at
json.url event_url(event, format: :json)
