feature 'Main' do
  scenario 'Attack player 2 button' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Sam Hitpoints: 90'
  end
end
