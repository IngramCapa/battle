feature "attack" do

    scenario "attacking player 1" do
      sign_in_and_play
      click_button 'Attack!'
      expect(page).to have_content("Harrison has attacked Raluca!")
    end
  
    scenario "deducting points after attacking player 1" do
      sign_in_and_play
      click_on("Attack!")
      expect(page).to have_content("Harrison has attacked Raluca!")
      click_on("Next move")
      expect(page).not_to have_content("Raluca's HP: 100/100")
      expect(page).to have_content("Raluca's HP: 90/100")
    end
  end