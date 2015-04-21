get '/' do
  @flips = Flip.all
  erb :index
end