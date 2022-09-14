# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :insales_user_id, presence: true, uniqueness: true
  has_secure_password
  VALID_PASSWORD_REGEX = /(?=.*[0-9])(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*]/
  validates :password, presence: true, length: { minimum: 8 },
                       format: { with: VALID_PASSWORD_REGEX }
end
