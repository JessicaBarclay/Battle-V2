require './app.rb'
require './lib/game.rb'

feature 'Attack Player' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_button 'ATTACK!'
    expect(page).to have_content "The Donald has successfully attacked God!"
  end
  # scenario 'Player 2 attacks Player 1' do
  #   sign_in_and_play
  #   click_button 'ATTACK!'
  #   expect(page).to have_content "God has successfully attacked The Donald!"
  # end
end
