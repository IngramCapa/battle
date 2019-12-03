require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

    
    get '/' do
        erb :index
    end

    post '/names' do
        player_1 = Player.new(params[:Player_1])
        player_2 = Player.new(params[:Player_2])  
        $game = Game.new(player_1, player_2)
        redirect :play
    end

    get '/play' do
        @game = $game
        erb :play
    end

    get '/attack' do
        @game = $game
        @game.attack(@game.player_2)
        @game.attack(@game.player_1)
        erb :attack
    end

    # get '/next move' do
    #   player1.deduct

    # end


    # start server if ruby file executed directly
    # this lets you run the app.rb file without typing rackup before
    run! if app_file == $0
end
