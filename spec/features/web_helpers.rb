def sign_in_and_play
  visit '/'
  fill_in 'Player_1', with: 'Raluca'
  fill_in 'Player_2', with: 'Harrison'
  click_button 'Submit'
end