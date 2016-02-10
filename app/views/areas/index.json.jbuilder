json.array!(@areas) do |area|
  json.extract! area, :id, :name, :code, :description
  json.url area_url(area, format: :json)
end
