json.array!(@posts) do |post|
  json.extract! post, :id, :user_id, :text, :img_url, :location
  json.url post_url(post, format: :json)
end
