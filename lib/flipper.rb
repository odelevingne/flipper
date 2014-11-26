require 'sinatra/base'
require 'data_mapper'
require_relative './flip.rb'

env = ENV["RACK_ENV"] || "development"
DataMapper.setup(:default, "postgres://localhost/flipper_#{env}")
DataMapper.finalize
DataMapper.auto_upgrade!

class Flipper < Sinatra::Base

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

  run! if app_file == $0
end
