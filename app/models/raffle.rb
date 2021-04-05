class Raffle < ApplicationRecord
  belongs_to :user
  belongs_to :kind
  has_many :tickets
  has_many :prizes
end
