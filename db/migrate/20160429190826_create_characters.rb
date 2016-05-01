class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.decimal :weight
      t.integer :weight_rank
      t.decimal :run_speed
      t.integer :run_speed_rank
      t.decimal :walk_speed
      t.integer :walk_speed_rank
      t.decimal :air_speed
      t.integer :air_speed_rank
      t.decimal :fall_speed
      t.integer :fall_speed_rank
      t.decimal :fast_fall_speed
      t.integer :fast_fall_speed_rank
      t.decimal :air_acceleration
      t.decimal :gravity
      t.decimal :sh_air_time
      t.integer :max_jump
      t.boolean :wall_jump
      t.boolean :wall_cling
      t.boolean :crawl
      t.boolean :tether
      t.integer :jump_sqaut
      t.integer :soft_landing_lag
      t.integer :hard_landing_lag
      t.integer :fh_air_time
      t.decimal :patch_update


      t.timestamps null: false
    end
  end
end
