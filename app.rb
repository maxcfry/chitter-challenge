require 'sinatra/base'
require 'sinatra/reloader'

class Chitter < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end

  get '/' do 
    'Chitter Wall'
  end

  get '/chitter_wall' do 
    'Chitter Wall'
    erb :'chitter_wall/index'
  end

  run! if app_file == $0
end