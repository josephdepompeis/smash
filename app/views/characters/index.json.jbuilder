json.array!(@characters) do |character|
  json.extract! character, :id, :name, :weight, :weight_rank, :run_speed, :run_speed_rank, :walk_speed, :walk_speed_rank, :air_speed, :air_speed_rank, :fall_speed, :fall_speed_rank, :fast_fall_speed, :fast_fall_speed_rank, :air_acceleration, :gravity, :sh_air_time, :max_jump, :wall_jump, :wall_cling, :crawl, :tether, :jump_sqaut, :soft_landing_lag, :hard_landing_lag, :fh_air_time
  json.url character_url(character, format: :json)
end
