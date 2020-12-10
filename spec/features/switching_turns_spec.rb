require 'spec_helper'

describe 'swap players', type: :feature do
  before(:each) do
    sign_in_and_play
  end

  scenario "player 2 should attack player 1 in round 2" do
    click_button("Attack Hermione")
    expect(page).to have_content("Harry attacked Hermione")
    click_button("Attack Harry")
    expect(page).to have_content("Hermione attacked Harry")
  end

end