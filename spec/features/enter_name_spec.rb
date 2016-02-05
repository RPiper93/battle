describe 'Entering names' do

  it 'accepts the names' do
    sign_in_and_play
    expect(page).to have_content('Alain vs Rebecca')
  end
end