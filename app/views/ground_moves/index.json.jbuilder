json.array!(@ground_moves) do |ground_move|
  json.extract! ground_move, :id, :name, :hitbox_active_start, :hotbox_active_end, :first_actionable_frame, :base_damage, :angle, :base_knockback, :weight_based_knockback, :knock, :back_growth, :notes, :patch, :variation_of
  json.url ground_move_url(ground_move, format: :json)
end
