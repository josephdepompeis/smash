require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "users have passwords" do

  user = User.create!(password: "password")

  refute_equal user.password_digest, "password"
  end

end
