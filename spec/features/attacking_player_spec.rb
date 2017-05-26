feature 'Main' do
  scenario 'Attack player 2 button' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Sam Hitpoints: 90'
  end

  scenario 'switch button' do
    sign_in_and_play
    click_button('Switch')
    expect(page).to have_content 'Ian Hitpoints: 100'
  end

  scenario 'Confirm when attacked' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Ian attacked Sam!'
  end
end
