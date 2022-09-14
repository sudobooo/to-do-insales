# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :insales_user_id, presence: true, uniqueness: true
  has_secure_password
end
