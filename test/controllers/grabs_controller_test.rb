require 'test_helper'

class GrabsControllerTest < ActionController::TestCase
  setup do
    @grab = grabs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grabs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grab" do
    assert_difference('Grab.count') do
      post :create, grab: { character_id: @grab.character_id, first_actionable_frame: @grab.first_actionable_frame, hitbox_active_end: @grab.hitbox_active_end, hitbox_active_start: @grab.hitbox_active_start, name: @grab.name, variation_of: @grab.variation_of }
    end

    assert_redirected_to grab_path(assigns(:grab))
  end

  test "should show grab" do
    get :show, id: @grab
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grab
    assert_response :success
  end

  test "should update grab" do
    patch :update, id: @grab, grab: { character_id: @grab.character_id, first_actionable_frame: @grab.first_actionable_frame, hitbox_active_end: @grab.hitbox_active_end, hitbox_active_start: @grab.hitbox_active_start, name: @grab.name, variation_of: @grab.variation_of }
    assert_redirected_to grab_path(assigns(:grab))
  end

  test "should destroy grab" do
    assert_difference('Grab.count', -1) do
      delete :destroy, id: @grab
    end

    assert_redirected_to grabs_path
  end
end
