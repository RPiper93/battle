feature 'Switching Turns' do

  scenario 'says whose turn it is' do
    sign_in_and_play
    expect(page).to have_content("Alain's Turn")
  end

  scenario 'changes turn' do
    sign_in_and_play
    attack_and_ok
    expect(page).to_not have_content("Alain's Turn")
    expect(page).to have_content("Rebecca's Turn")
  end
end