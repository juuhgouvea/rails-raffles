require "application_system_test_case"

class RafflesTest < ApplicationSystemTestCase
  setup do
    @raffle = raffles(:one)
  end

  test "visiting the index" do
    visit raffles_url
    assert_selector "h1", text: "Raffles"
  end

  test "creating a Raffle" do
    visit raffles_url
    click_on "New Raffle"

    fill_in "Description", with: @raffle.description
    fill_in "Draw date", with: @raffle.draw_date
    fill_in "End sale date", with: @raffle.end_sale_date
    fill_in "Initial draw date", with: @raffle.initial_draw_date
    fill_in "Kind", with: @raffle.kind_id
    fill_in "Start sale date", with: @raffle.start_sale_date
    fill_in "Ticket price", with: @raffle.ticket_price
    fill_in "Title", with: @raffle.title
    fill_in "User", with: @raffle.user_id
    click_on "Create Raffle"

    assert_text "Raffle was successfully created"
    click_on "Back"
  end

  test "updating a Raffle" do
    visit raffles_url
    click_on "Edit", match: :first

    fill_in "Description", with: @raffle.description
    fill_in "Draw date", with: @raffle.draw_date
    fill_in "End sale date", with: @raffle.end_sale_date
    fill_in "Initial draw date", with: @raffle.initial_draw_date
    fill_in "Kind", with: @raffle.kind_id
    fill_in "Start sale date", with: @raffle.start_sale_date
    fill_in "Ticket price", with: @raffle.ticket_price
    fill_in "Title", with: @raffle.title
    fill_in "User", with: @raffle.user_id
    click_on "Update Raffle"

    assert_text "Raffle was successfully updated"
    click_on "Back"
  end

  test "destroying a Raffle" do
    visit raffles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Raffle was successfully destroyed"
  end
end
