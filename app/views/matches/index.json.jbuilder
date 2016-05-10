json.array!(@matches) do |match|
  json.extract! match, :id, :name, :playing_as, :playing_against, :user_id
  json.url match_url(match, format: :json)
end
