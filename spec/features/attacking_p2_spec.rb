feature "attack" do

  scenario "attacking player 2" do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content("Raluca has attacked Harrison!")
  end

  scenario "deducting points after attacking player 2" do
    sign_in_and_play
    click_on("Attack!")
    expect(page).to have_content("Raluca has attacked Harrison!")
    click_on("Next move")
    expect(page).not_to have_content('Harrison hit points: 100/100')
    expect(page).to have_content('Harrison hit points: 90/100')

end
end