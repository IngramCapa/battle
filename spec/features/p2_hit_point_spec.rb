feature "player 2 hit points" do
    scenario "view player 2 hit points" do
        sign_in_and_play
        expect(page).to have_content("Harrison's HP: 100/100")
    end
end