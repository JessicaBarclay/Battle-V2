feature 'Mulitplayer' do
  scenario 'Player 2 attacks Player 1' do
    sign_in_and_play
    click_button('ATTACK!')
    click_button('Switch Turns')
    click_button('ATTACK!')
    expect(page).to have_content 'God has successfully attacked The Donald!'
  end
end
