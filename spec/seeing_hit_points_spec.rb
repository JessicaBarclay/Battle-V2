feature 'View Hit Points' do
  scenario 'Displays Player 1\'s HP' do
    sign_in_and_play
    expect(page).to have_content 'The Donald: 60HP'
  end
  scenario 'Displays Player 2\'s HP' do
    sign_in_and_play
    expect(page).to have_content 'God: 60HP'
  end
end
