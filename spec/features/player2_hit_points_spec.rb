feature 'Main' do
  scenario 'allow player1 to check player2 hit poits' do
    sign_in_and_play
    expect(page).to have_content('Ian Hitpoints: 100')
    expect(page).to have_content('Sam Hitpoints: 100')
  end

  scenario 'player 1 reduces player 2 hit points' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Sam Hitpoints: 90')
  end

  scenario 'player 2 reduces player 1 hit points' do
    sign_in_and_play
    click_button('Switch')
    click_button('Attack')
    expect(page).to have_content('Ian Hitpoints: 90')
  end
end
