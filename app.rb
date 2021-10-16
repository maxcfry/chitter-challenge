require 'sinatra/base'
require 'sinatra/reloader'
require './lib/chitter_wall'

class Chitter < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end

  get '/' do 
    'Chitter'
  end

  get '/chitter_wall' do 
    @chitter_wall = Chitterwall.all
    erb :'chitter_wall/index'
  end

  get '/chitter_wall/new' do
    erb :'chitter_wall/new'
  end

  post '/chitter_wall' do
    Chitterwall.create(url: params[:url])
    redirect '/chitter_wall'
  end
 
  run! if app_file == $0
end
