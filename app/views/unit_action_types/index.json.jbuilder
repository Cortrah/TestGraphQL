json.array!(@unit_action_types) do |unit_action_type|
  json.extract! unit_action_type, :id, :name, :code, :description_template, :results_template
  json.url unit_action_type_url(unit_action_type, format: :json)
end
