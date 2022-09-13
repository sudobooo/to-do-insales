# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Example User", insales_user_id: 1234)
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = "     "
    assert_not @user.valid?
  end

  test "insales_user_id should be present" do
    @user.insales_user_id = nil
    assert_not @user.valid?
  end
end
