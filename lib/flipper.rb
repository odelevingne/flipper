require 'sinatra/base'
require 'data_mapper'
require_relative './flip.rb'
require_relative './user.rb'
require_relative './helpers/application'

env = ENV["RACK_ENV"] || "development"
DataMapper.setup(:default, "postgres://localhost/flipper_#{env}")
DataMapper.finalize
DataMapper.auto_upgrade!

class Flipper < Sinatra::Base

	enable :sessions
	set :session_secret, 'super secret'

  get '/' do
  	@flips = Flip.all
    erb :index
  end

  post '/' do
  	Flip.create(content: params["flip"], created_at: params[Time.now])
  	redirect to('/')
  end

  get '/users/new' do
  	erb :"users/new"
  end

  post '/users/new' do
  	user = User.create(name: params["name"], email: params["email"])
  	session[:user_id] = user.id
  	redirect to('/')
  end

  run! if app_file == $0
end
