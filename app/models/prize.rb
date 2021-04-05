class Prize < ApplicationRecord
  belongs_to :drawn_ticket, class_name: 'Ticket', foreign_key: 'drawn_ticket_id'
  belongs_to :raffle
end
