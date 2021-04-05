class User < ApplicationRecord
  has_many :raffles
  has_many :tickets
  has_many :prizes, through: :tickets
end
