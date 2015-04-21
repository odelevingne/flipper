require 'sinatra/base'
require 'data_mapper'
require 'rack-flash'
require 'json'

require_relative 'helpers/application'

require_relative 'data_mapper_setup'

# require_relative 'controllers/application'
# require_relative 'controllers/flips'
# require_relative 'controllers/sessions'
# require_relative 'controllers/users'


class Flipper < Sinatra::Base

	enable :sessions
	set :session_secret, 'super secret'
	use Rack::Flash

  get '/' do
  	@flips = Flip.all
    erb :index
  end

  post '/' do
    if current_user
  	   Flip.create(content: params["flip"], created_at: params[Time.now], user: @current_user)
  	   redirect to('/')
    else
      redirect to('/sessions/new')
    end
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
