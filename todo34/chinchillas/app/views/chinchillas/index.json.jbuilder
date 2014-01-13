json.array!(@chinchillas) do |chinchilla|
  json.extract! chinchilla, :id
  json.url chinchilla_url(chinchilla, format: :json)
end
