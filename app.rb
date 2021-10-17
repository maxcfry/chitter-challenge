require 'sinatra/base'
require 'sinatra/reloader'
require './lib/chitter_wall'

class Chitter < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end

  get '/' do 
    "Welcome to Chitter!"
    # erb :'chitter_wall/sign_up'
  end 

  # post '/' do 
  #   Chitterwall.sign(username: params[:username])
  #   redirect '/chitter_wall'
  # end

  get '/chitter_wall' do 
    #(return to here if in doubt - database called USERS not USER)
    @user = User.find(session[:user_id])
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

  get '/users/new' do
    erb :"users/new"
  end

  post '/users' do 
    User.create(username: params[:username], password: params[:password])
    session[:user_id] = user.id
    redirect '/chitter_wall'
  end
 
  run! if app_file == $0
end
