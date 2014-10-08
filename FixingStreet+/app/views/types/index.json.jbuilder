json.array!(@types) do |type|
  json.extract! type, :id, :name, :status
  json.url type_url(type, format: :json)
end
