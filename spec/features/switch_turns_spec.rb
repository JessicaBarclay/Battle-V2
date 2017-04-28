feature 'Players can switch turns to attack' do
  scenario 'View displays current turn' do
    sign_in_and_play
    expect(page).to have_content 'It is The Donald\'s turn'
  end
end
