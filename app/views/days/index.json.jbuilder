json.array!(@days) do |day|
  json.extract! day, :id, :goal, :good, :bad, :actions, :regret
  json.url day_url(day, format: :json)
end
