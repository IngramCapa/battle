require 'sinatra/base'

class Battle < Sinatra::Base
    
    get '/' do
        "hello battle"
        "Testing infrastructure working!"
    end

    # start server if ruby file executed directly
    run! if app_file == $0
end
