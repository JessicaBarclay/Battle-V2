def sign_in_and_play
  fill_in :player_1_name, with: 'The Donald'
  fill_in :player_2_name, with: 'God'
  click_button "Submit"
end
