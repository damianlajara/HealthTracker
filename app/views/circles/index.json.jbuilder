json.array!(@circles) do |circle|
  json.extract! circle, :id, :name
  json.url circle_url(circle, format: :json)
end
