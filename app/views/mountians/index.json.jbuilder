json.data do
  json.array! @mountians, :id, :name, :description, :lat, :lng, :elevation
end
