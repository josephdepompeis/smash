json.extract! @character, :id, :name, :weight, :weight_rank, :run_speed, :run_speed_rank, :walk_speed, :walk_speed_rank, :air_speed, :air_speed_rank, :fall_speed, :fall_speed_rank, :fast_fall_speed, :fast_fall_speed_rank, :air_acceleration, :gravity, :sh_air_time, :max_jump, :wall_jump, :wall_cling, :crawl, :tether, :jump_sqaut, :soft_landing_lag, :hard_landing_lag, :fh_air_time, :created_at, :updated_at


json.ground_moves  @character.ground_moves.each do |ground_move|
  json.extract! ground_move, :id, :character_id, :name, :hitbox_active_start, :hotbox_active_end, :first_actionable_frame, :base_damage, :angle, :base_knockback, :weight_based_knockback, :knock, :back_growth, :notes, :patch, :variation_of, :created_at, :updated_at
end


json.grabs  @character.grabs.each do |grab|
  # json.name grab.name
  json.extract! grab, :id, :character_id, :name, :hitbox_active_start, :hitbox_active_end, :first_actionable_frame, :variation_of, :created_at, :updated_at


end
