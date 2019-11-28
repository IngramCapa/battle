require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base

    enable :sessions
    
    get '/' do
        erb(:index)
    end

    post '/names' do
        $player_1 = Player.new(params[:Player_1])
        $player_2 = Player.new(params[:Player_2])
        redirect '/play'
    end

    get '/play' do
        @player_1 = $player_1.name
        @player_2 = $player_2.name
        @player_2_hp = 100
        erb(:play)
    end

    get '/attack' do
        @player_1 = $player_1.name
        @player_2 = $player_2.name
        erb(:attack)
    end


    # start server if ruby file executed directly
    # this lets you run the app.rb file without typing rackup before
    run! if app_file == $0
end
