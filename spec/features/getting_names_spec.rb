feature " getting players' names" do 
    scenario "filling in form" do 
        visit '/'
        fill_in 'Player_1', with: 'Raluca'
        fill_in 'Player_2', with: 'Harrison'
        click_button 'Submit'
        expect(page).to have_content 'Raluca vs. Harrison'
    end

end