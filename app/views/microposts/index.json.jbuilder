json.array!(@microposts) do |micropost|
  json.extract! micropost, :id, :user_id, :token, :content
  json.url micropost_url(micropost, format: :json)
end
