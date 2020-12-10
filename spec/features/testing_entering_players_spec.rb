require "spec_helper"

describe "testing players", type: :feature do
  before(:each) do
    sign_in_and_play
  end

  scenario "players can fill in their names, submit a form and see the names on-screen" do
    expect(page).to have_content("Harry")
    expect(page).to have_content("Hermione")
  end

  scenario "player 1 can see player 2 hit points" do
    expect(page).to have_content "Hermione: 100/100 HP"
  end
end
