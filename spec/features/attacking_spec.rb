feature 'attacking' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content('Alain successfully attacked Rebecca!')
  end

  scenario 'player 2 attacks player 1' do
    sign_in_and_play
    attack_and_ok
    click_button('Attack!')
    expect(page).to have_content('Rebecca successfully attacked Alain!')
  end

  scenario 'when player reaches 0HP, sees Lose message' do
    sign_in_and_play
    18.times {attack_and_ok}
    click_button('Attack!')
    expect(page).to have_content('REBECCA LOSES!')
  end
end