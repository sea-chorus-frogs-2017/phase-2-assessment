enable :sessions

post '/users' do
  user = User.new(params[:user])
  user.save
  if user.persisted?
    session[:user] = user
    redirect '/'
  end

end

get '/users/:username' do
  @username = params[:username]
  @auctions = Auction.all
  p Auction.all
  erb :'users/show'
end
