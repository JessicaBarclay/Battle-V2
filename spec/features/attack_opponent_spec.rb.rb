feature 'Attack other Players to reduce HP' do
  scenario 'Player 1 attacks player 2' do
    sign_in_and_play
    click_button('ATTACK!')
    expect(page).to have_content 'God: 50HP'
  end
end
