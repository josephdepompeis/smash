require 'test_helper'

class MatchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Matchs have characters" do

    char1 = Character.create!(name: "johnson")
    char2 = Character.create!(name: "mikeY")
    match1 = Match.create!(name: "match1", playing_as: char1.id, playing_against: char2.id)
    
    assert_equal  match1.playing_as, char1.id
    assert_equal  match1.playing_against, char2.id
    assert_equal match1.characters.first.id, char1.id
    assert_equal match1.characters.second.id, char2.id
    assert  match1.characters.empty? == false
  end

  test "Matchs require playing_as and against " do
    char1 = Character.create!(name: "johnson")
    char2 = Character.create!(name: "mikeY")
    match1 = Match.create!(name: "match1", playing_as: char1.id, playing_against: char2.id)
    match2 = Match.create(name: "match2")

    assert_equal  match1.playing_as, char1.id
    assert_equal match2.id, nil
  end

end
