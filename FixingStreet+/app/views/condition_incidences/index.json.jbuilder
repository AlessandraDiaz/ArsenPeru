json.array!(@condition_incidences) do |condition_incidence|
  json.extract! condition_incidence, :id, :name, :status
  json.url condition_incidence_url(condition_incidence, format: :json)
end
