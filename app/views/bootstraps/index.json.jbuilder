json.array!(@bootstraps) do |bootstrap|
  json.extract! bootstrap, :id, :title, :fname, :lname, :rating
  json.url bootstrap_url(bootstrap, format: :json)
end
