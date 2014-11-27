require 'sinatra/base'
require 'data_mapper'
require 'rack-flash'

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
	use Rack::Flash

  get '/' do
  	@flips = Flip.all
    erb :index
  end

  post '/' do
  	Flip.create(content: params["flip"], created_at: params[Time.now])
  	redirect to('/')
  end

  get '/users/new' do
  	@user = User.new
  	erb :"users/new"
  end

  post '/users/new' do
  	@user = User.create(:name => params[:name],
  										 :email => params[:email], 
  										 :password => params[:password],
  										 :password_confirmation => params[:password_confirmation])
  	if @user.save
  		session[:user_id] = @user.id
  		redirect to('/')
  	else
  		flash[:notice] = @user.errors.full_messages
  		erb :"users/new"
  	end
  end

  get '/sessions/new' do
  	erb :"sessions/new"
	end

  post '/sessions' do
  	email, password = params[:email], params[:password]
  	user = User.authenticate(email, password)
  	if user
   	 session[:user_id] = user.id
   	 redirect to('/')
 	 else
    flash[:errors] = ["The email or password are incorrect"]
    erb :"sessions/new"
  	end
	end

	post '/sessions/delete' do
	  session[:user_id] = nil
	  redirect to('/')
end
  
  run! if app_file == $0
end
