json.array!(@turns) do |turn|
  json.extract! turn, :id, :number, :introduction, :results
  json.url turn_url(turn, format: :json)
end
