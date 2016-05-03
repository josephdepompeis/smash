require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


  test "Characters have ground_moves" do
    char1 = Character.create!(name: "johnson")
    gm1 = GroundMove.create!(name: "johnson's move", character_id: char1.id)
    assert_equal  char1.ground_moves.first, gm1
  end

  test "Characters have grabs" do
    char1 = Character.create!(name: "johnson")
    grab1 = Grab.create!(name: "johnson's grab", character_id: char1.id)
    assert_equal  char1.grabs.first, grab1
  end








end
