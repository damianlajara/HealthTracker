json.array!(@user_sleeps) do |user_sleep|
  json.extract! user_sleep, :id, :user, :hours, :start, :wake, :quality
  json.url user_sleep_url(user_sleep, format: :json)
end
