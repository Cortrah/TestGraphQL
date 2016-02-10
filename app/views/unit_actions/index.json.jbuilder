json.array!(@unit_actions) do |unit_action|
  json.extract! unit_action, :id, :name, :code, :description, :position_state_id, :unit_action_type_id, :phase, :cost
  json.url unit_action_url(unit_action, format: :json)
end
