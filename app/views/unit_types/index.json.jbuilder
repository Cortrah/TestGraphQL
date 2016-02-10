json.array!(@unit_types) do |unit_type|
  json.extract! unit_type, :id, :name, :code, :description, :money_cost, :material_cost, :movement, :attack, :defense, :range_attack, :cargo_capacity
  json.url unit_type_url(unit_type, format: :json)
end
