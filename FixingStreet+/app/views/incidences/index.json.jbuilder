json.array!(@incidences) do |incidence|
  json.extract! incidence, :id, :ticket, :picture, :description, :reference, :date, :latitud, :longitud
  json.url incidence_url(incidence, format: :json)
end
