json.array!(@type_incidences) do |type_incidence|
  json.extract! type_incidence, :id, :name
  json.url type_incidence_url(type_incidence, format: :json)
end
