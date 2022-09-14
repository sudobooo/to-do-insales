# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'Example User', insales_user_id: 1234,
                     password: 'Uc##%E6n', password_confirmation: 'Uc##%E6n')
  end

  test 'should be valid' do
    assert @user.valid?
  end

  test 'name should be present' do
    @user.name = ' ' * 6
    assert_not @user.valid?
  end

  test 'insales_user_id should be present' do
    @user.insales_user_id = nil
    assert_not @user.valid?
  end

  test 'name should not be too long' do
    @user.name = 'a' * 51
    assert_not @user.valid?
  end

  test 'email addresses should be unique' do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end

  test 'password should be present (nonblank)' do
    @user.password = @user.password_confirmation = ' ' * 8
    assert_not @user.valid?
  end

  test 'password should have a minimum length' do
    @user.password = @user.password_confirmation = 'a' * 7
    assert_not @user.valid?
  end

  test 'password validation should accept valid passwords' do
    valid_passwords = %w[Uc##%E6n i2h@8%Z1 dBbrkH%A1]
    valid_passwords.each do |valid_password|
      @user.password = @user.password_confirmation = valid_password
      assert @user.valid?, "#{valid_password.inspect} should be valid"
    end
  end

  test 'password validation should reject invalid passwords' do
    invalid_passwords = %w[12345678 Lo7899056 !#567431#! Ui09467321
                           ar4567!#@ AR78956@#!]
    invalid_passwords.each do |invalid_password|
      @user.password = @user.password_confirmation = invalid_password
      assert_not @user.valid?, "#{invalid_password.inspect} should be invalid"
    end
  end
end
