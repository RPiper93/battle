require 'capybara/dsl'
require 'selenium-webdriver'

def sign_in_and_play
  include Capybara::DSL
  Capybara.default_driver = :selenium
  visit('/')
  fill_in('player_1_name', with: 'Alain')
  fill_in('player_2_name', with: 'Rebecca')
  click_button('Submit')
end