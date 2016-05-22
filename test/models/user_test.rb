require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "users have  encripted passwords" do
  user = User.create!(password: "password")
  refute_equal user.password_digest, "password"
  end

  test "users have matches" do
  user = User.create!(password: "password")
  char1 = Character.create!(name: "johnson")
  char2 = Character.create!(name: "mikeY")
  match1 = Match.create!(name: "match1", playing_as: char1.id, playing_against: char2.id, user_id: user.id)
  note1 = Note.create!(name: "note", match_id:match1.id, section: match1.playing_as)
  assert_equal user.matches.first, match1
  end


end
