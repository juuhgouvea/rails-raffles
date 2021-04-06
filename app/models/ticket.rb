class Ticket < ApplicationRecord
  belongs_to :raffle
  belongs_to :user, optional: true
  has_one :prize
end
