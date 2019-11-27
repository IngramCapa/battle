require 'sinatra/base'

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
        erb(:play)
    end


    # start server if ruby file executed directly
    run! if app_file == $0
end
