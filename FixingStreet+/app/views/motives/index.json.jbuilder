json.array!(@motives) do |motive|
  json.extract! motive, :id, :name, :status
  json.url motive_url(motive, format: :json)
end
