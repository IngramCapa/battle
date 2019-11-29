require 'sinatra/base'
require './lib/player'
require './lib/game'
class Battle < Sinatra::Base

    
    get '/' do
        erb :index
    end

    post '/names' do
        $player_1 = Player.new(params[:Player_1])
        $player_2 = Player.new(params[:Player_2])
        redirect :play
    end

    get '/play' do
        @player_1 = $player_1.name
        @player_2 = $player_2.name
        @player_1_hp = $player_1.hp
        @player_2_hp = $player_2.hp
        erb :play
    end

    get '/attack' do
        @player_1_object = $player_1
        @player_2_object = $player_2
        @player_1 = $player_1.name
        @player_2 = $player_2.name
        Game.new.attack(@player_2_object)
        @player_1_hp = $player_1.hp
        @player_2_hp = $player_2.hp
        erb :attack
    end

    # get '/next move' do
    #   player1.deduct

    # end


    # start server if ruby file executed directly
    # this lets you run the app.rb file without typing rackup before
    run! if app_file == $0
end
