feature 'Seeing Player 2 HP' do

  scenario 'view HP of player 2' do
    sign_in_and_play
    expect(page).to have_content("Rebecca's HP: 100/100")
  end

	scenario 'player 2 HP reduced after attack' do
		sign_in_and_play
    attack_and_ok
		expect(page).to have_content("Rebecca's HP: 90/100")
	end

  scenario 'player 1 HP reduced after attack' do
    sign_in_and_play
    attack_and_ok
    attack_and_ok
    expect(page).to have_content("Alain's HP: 90/100")
  end

  scenario 'view HP of player 1' do
    sign_in_and_play
    expect(page).to have_content("Alain's HP: 100/100")
  end

end

