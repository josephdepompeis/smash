require 'test_helper'

class CharactersControllerTest < ActionController::TestCase
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:characters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post :create, character: { air_acceleration: @character.air_acceleration, air_speed: @character.air_speed, air_speed_rank: @character.air_speed_rank, crawl: @character.crawl, fall_speed: @character.fall_speed, fall_speed_rank: @character.fall_speed_rank, fast_fall_speed: @character.fast_fall_speed, fast_fall_speed_rank: @character.fast_fall_speed_rank, fh_air_time: @character.fh_air_time, gravity: @character.gravity, hard_landing_lag: @character.hard_landing_lag, jump_sqaut: @character.jump_sqaut, max_jump: @character.max_jump, name: @character.name, run_speed: @character.run_speed, run_speed_rank: @character.run_speed_rank, sh_air_time: @character.sh_air_time, soft_landing_lag: @character.soft_landing_lag, tether: @character.tether, walk_speed: @character.walk_speed, walk_speed_rank: @character.walk_speed_rank, wall_cling: @character.wall_cling, wall_jump: @character.wall_jump, weight: @character.weight, weight_rank: @character.weight_rank }
    end

    assert_redirected_to character_path(assigns(:character))
  end

  test "should show character" do
    get :show, id: @character
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character
    assert_response :success
  end

  test "should update character" do
    patch :update, id: @character, character: { air_acceleration: @character.air_acceleration, air_speed: @character.air_speed, air_speed_rank: @character.air_speed_rank, crawl: @character.crawl, fall_speed: @character.fall_speed, fall_speed_rank: @character.fall_speed_rank, fast_fall_speed: @character.fast_fall_speed, fast_fall_speed_rank: @character.fast_fall_speed_rank, fh_air_time: @character.fh_air_time, gravity: @character.gravity, hard_landing_lag: @character.hard_landing_lag, jump_sqaut: @character.jump_sqaut, max_jump: @character.max_jump, name: @character.name, run_speed: @character.run_speed, run_speed_rank: @character.run_speed_rank, sh_air_time: @character.sh_air_time, soft_landing_lag: @character.soft_landing_lag, tether: @character.tether, walk_speed: @character.walk_speed, walk_speed_rank: @character.walk_speed_rank, wall_cling: @character.wall_cling, wall_jump: @character.wall_jump, weight: @character.weight, weight_rank: @character.weight_rank }
    assert_redirected_to character_path(assigns(:character))
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete :destroy, id: @character
    end

    assert_redirected_to characters_path
  end
end
