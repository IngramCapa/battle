feature "switch_turns" do
  context "seeing the current turn" do

    scenario "at the start of the game" do
      sign_in_and_play
      expect(page).to have_content("Raluca's turn")
    end
  
  
    scenario "after player 1 attacks" do
      sign_in_and_play
      click_on("Attack!")
      # click_link "OK"
      expect(page).not_to have_content("Raluca's turn")
      expect(page).to have_content("Harrison's turn")
    end
  end
end