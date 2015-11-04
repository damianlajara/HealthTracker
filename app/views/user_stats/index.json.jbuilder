json.array!(@user_stats) do |user_stat|
  json.extract! user_stat, :id, :belongs_to, :feeling, :date, :sleep, :calories, :exercise
  json.url user_stat_url(user_stat, format: :json)
end
