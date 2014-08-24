json.array!(@wiggles) do |wiggle|
  json.extract! wiggle, :id, :name, :owner_id
  json.url wiggle_url(wiggle, format: :json)
end
