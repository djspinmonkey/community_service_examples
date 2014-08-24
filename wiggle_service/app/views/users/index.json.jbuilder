json.array!(@users) do |user|
  json.extract! user, :id, :global_id, :favorite_wiggle_id
  json.url user_url(user, format: :json)
end
