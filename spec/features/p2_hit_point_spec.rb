feature "player 2 hit points" do
    scenario "view player 2 hit points" do
        visit '/'
        fill_in 'Player_1', with: 'Raluca'
        fill_in 'Player_2', with: 'Harrison'
        click_button 'Submit'
        # expect(page).to have_content 'Raluca vs. Harrison'
        expect(page).to have_content "Harrison's HP: 100/100"

    end
end