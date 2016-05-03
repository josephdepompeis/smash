json.array!(@grabs) do |grab|
  json.extract! grab, :id, :character_id, :name, :hitbox_active_start, :hitbox_active_end, :first_actionable_frame, :variation_of
  json.url grab_url(grab, format: :json)
end
