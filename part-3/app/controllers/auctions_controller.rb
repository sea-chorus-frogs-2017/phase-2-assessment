get '/auctions/new' do
  @auction
  erb :'auctions/new'
end

post '/auctions' do
  @auction = Auction.new(params[:auction])
  if @auction.save
    redirect to "/users/#{session[:user_id]}"
  else
    erb :'auctions/new'
  end
end
