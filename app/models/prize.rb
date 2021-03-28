class Prize < ApplicationRecord
  belongs_to :drawn_ticket
  belongs_to :raffle
end
