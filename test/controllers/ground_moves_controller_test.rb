require 'test_helper'

class GroundMovesControllerTest < ActionController::TestCase
  setup do
    @ground_move = ground_moves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ground_moves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ground_move" do
    assert_difference('GroundMove.count') do
      post :create, ground_move: { angle: @ground_move.angle, back_growth: @ground_move.back_growth, base_damage: @ground_move.base_damage, base_knockback: @ground_move.base_knockback, first_actionable_frame: @ground_move.first_actionable_frame, hitbox_active_start: @ground_move.hitbox_active_start, hotbox_active_end: @ground_move.hotbox_active_end, knock: @ground_move.knock, name: @ground_move.name, notes: @ground_move.notes, patch: @ground_move.patch, variation_of: @ground_move.variation_of, weight_based_knockback: @ground_move.weight_based_knockback }
    end

    assert_redirected_to ground_move_path(assigns(:ground_move))
  end

  test "should show ground_move" do
    get :show, id: @ground_move
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ground_move
    assert_response :success
  end

  test "should update ground_move" do
    patch :update, id: @ground_move, ground_move: { angle: @ground_move.angle, back_growth: @ground_move.back_growth, base_damage: @ground_move.base_damage, base_knockback: @ground_move.base_knockback, first_actionable_frame: @ground_move.first_actionable_frame, hitbox_active_start: @ground_move.hitbox_active_start, hotbox_active_end: @ground_move.hotbox_active_end, knock: @ground_move.knock, name: @ground_move.name, notes: @ground_move.notes, patch: @ground_move.patch, variation_of: @ground_move.variation_of, weight_based_knockback: @ground_move.weight_based_knockback }
    assert_redirected_to ground_move_path(assigns(:ground_move))
  end

  test "should destroy ground_move" do
    assert_difference('GroundMove.count', -1) do
      delete :destroy, id: @ground_move
    end

    assert_redirected_to ground_moves_path
  end
end
