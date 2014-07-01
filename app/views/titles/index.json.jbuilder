json.array!(@titles) do |title|
  json.extract! title, :id, :description
  json.url title_url(title, format: :json)
end
