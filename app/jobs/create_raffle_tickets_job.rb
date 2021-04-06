class CreateRaffleTicketsJob < ApplicationJob
  queue_as :default

  def perform(*args)
    raffle = args.first
    tickets = (1..1000).map { |ticket_number| { number: ticket_number } }

    raffle.tickets.create(tickets)
    puts raffle.tickets.first.save
  end
end
