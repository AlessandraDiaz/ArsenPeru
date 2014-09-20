json.array!(@ubigeos) do |ubigeo|
  json.extract! ubigeo, :id, :name, :level, :code, :status
  json.url ubigeo_url(ubigeo, format: :json)
end
