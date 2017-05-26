feature 'Main' do
  scenario 'allow player1 to check player2 hit poits' do
    sign_in_and_play
    expect(page).to have_content('Ian Hitpoints: 100')
    expect(page).to have_content('Sam Hitpoints: 100')
  end

end
