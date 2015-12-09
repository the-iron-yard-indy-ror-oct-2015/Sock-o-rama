require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "user_create" do
    user = create(:user)
    assert user.save, "User was not created"
  end

end
