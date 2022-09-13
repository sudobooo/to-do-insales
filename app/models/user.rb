# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true
  validates :insales_user_id, presence: true
end
