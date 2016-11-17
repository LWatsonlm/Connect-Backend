class User < ApplicationRecord
  include HTTParty
  has_many :attendances
  has_many :events, through: :attendances
end
