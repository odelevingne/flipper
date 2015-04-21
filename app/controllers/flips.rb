post '/' do
  if current_user
     Flip.create(content: params["flip"], created_at: params[Time.now], user: @current_user)
     redirect to('/')
  else
    redirect to('/sessions/new')
  end
end