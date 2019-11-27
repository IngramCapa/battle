feature "attacking player 2" do
  scenario "visit page and click attack button" do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content("Raluca has attacked Harrison")
  end
end