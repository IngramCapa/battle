feature " getting players' names" do 
    scenario "filling in form" do 
        sign_in_and_play
        expect(page).to have_content 'Raluca vs. Harrison'
    end

end