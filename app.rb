require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  set :session_secret, "super-secret"
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player1 = Player.new(params[:player1])
    @player2 = Player.new(params[:player2])
    game = Game.new(@player1, @player2)
    redirect to '/play'
  end

  get '/play' do
    @player1 = Game.player1
    @player2 = Game.player2
    erb :play
  end 
  
  get '/attack' do
    @player1 = Game.player1
    @player2 = Game.player2
    Game.attack(Game.opponent)
    redirect '/game_over' if Game.over?
    redirect '/play'
  end

  get '/switch' do
    Game.switch
    redirect '/play'
  end

  get '/game_over' do
    erb :game_over
  end
end
