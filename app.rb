require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base

    enable :sessions
    
    get '/' do
        erb(:index)
    end

    post '/names' do
        session[:player_1] = params[:Player_1]
        session[:player_2] = params[:Player_2]
        redirect '/play'
    end

    get '/play' do
        @player_1 = session[:player_1]
        @player_2 = session[:player_2]
        @player_2_hp = 100
        erb(:play)
    end

    get '/attack' do
        @player_1 = session[:player_1]
        @player_2 = session[:player_2]
        erb(:attack)
    end


    # start server if ruby file executed directly
    # this lets you run the app.rb file without typing rackup before
    run! if app_file == $0
end
