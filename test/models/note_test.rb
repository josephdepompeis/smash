require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "matches have notes" do

    char1 = Character.create!(name: "johnson")
    char2 = Character.create!(name: "mikeY")
    match1 = Match.create!(name: "match1", playing_as: char1.id, playing_against: char2.id)
    note1 = Note.create!(name: "note", match_id:match1.id, section: match1.playing_as)
    assert_equal match1.notes.first.id, note1.id

  end

  test "notes have matches" do

    char1 = Character.create!(name: "johnsonz")
    char2 = Character.create!(name: "mikeYz")
    match1 = Match.create!(name: "match1", playing_as: char1.id, playing_against: char2.id)
    note1 = Note.create!(name: "note", match_id:match1.id, section: match1.playing_as)
    assert_equal note1.match.id, match1.id

  end

  test "notes must have match id" do

    char1 = Character.create!(name: "johnsonz")
    char2 = Character.create!(name: "mikeYz")
    match1 = Match.create!(name: "match1", playing_as: char1.id, playing_against: char2.id)
    note1 = Note.create!(name: "note1", match_id:match1.id, section: match1.playing_as)
    # note2 is missing match id
    note2 = Note.create(name: "note2", section: match1.playing_as)
    
    assert_equal note1.match.id, match1.id
    assert_equal  nil, note2.id


  end


end
