json.array!(@notes) do |note|
  json.extract! note, :id, :name, :match_id, :order, :section, :video_url, :img_url
  json.url note_url(note, format: :json)
end
