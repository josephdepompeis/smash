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


  test "characters have playing_as matches" do
    char1 = Character.create!(name: "johnson")
    char2 = Character.create!(name: "mikeY")
    match1 = Match.create!(name: "match1", playing_as: char1.id, playing_against: char2.id)
    match2 = Match.create!(name: "match1", playing_as: char1.id, playing_against: char2.id)
    match3 = Match.create!(name: "match1", playing_as: char1.id, playing_against: char2.id)

    assert_equal char1.playing_as.first.id, match1.id
    assert_equal char1.playing_as.second.id, match2.id
    assert_equal char1.playing_as.third.id, match3.id
  end

  test "characters have playing_against matches" do
    char1 = Character.create!(name: "johnson")
    char2 = Character.create!(name: "mikeY")
    match1 = Match.create!(name: "match1", playing_as: char1.id, playing_against: char2.id)
    match2 = Match.create!(name: "match1", playing_as: char1.id, playing_against: char2.id)
    match3 = Match.create!(name: "match1", playing_as: char1.id, playing_against: char2.id)

    assert_equal char2.playing_against.first.id, match1.id
    assert_equal char2.playing_against.second.id, match2.id
    assert_equal char2.playing_against.third.id, match3.id
  end




end
