require 'sinatra/base'
require 'player'
require 'game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect('/play')
  end

  get '/play' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    @current = $game.current
    erb(:play)
  end

  post '/attack' do
    redirect('/attack')
  end

  get '/attack' do
    @current = $game.current
    @opponent = $game.opponent
    $game.attack(@opponent)
    $game.switch_turn
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
