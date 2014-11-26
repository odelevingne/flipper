require 'sinatra/base'
require 'data_mapper'
require 'flip'

env = ENV["RACK_ENV"] || "development"
DataMapper.setup(:default, "postgres://localhost/flipper_#{env}")
DataMapper.finalize
DataMapper.auto_upgrade!

class Flipper < Sinatra::Base
  get '/' do
    erb :index
  end

  run! if app_file == $0
end
