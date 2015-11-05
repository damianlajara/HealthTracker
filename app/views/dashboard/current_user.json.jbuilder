json.array! @stats do |user_stat|
  json.extract! user_stat, :id, :user_id, :feeling, :sleep, :calories, :exercise, :created_at, :updated_at
end
