json.array!(@positions) do |position|
  json.extract! position, :id, :name, :code, :color, :first_turn, :last_turn, :is_secret
  json.url position_url(position, format: :json)
end
