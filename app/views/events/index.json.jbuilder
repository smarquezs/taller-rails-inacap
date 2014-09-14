json.array!(@events) do |event|
  json.extract! event, :id, :title, :title_slug, :published_date, :author
  json.url event_url(event, format: :json)
end
