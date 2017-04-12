get '/auctions/new' do
  @auction = Auction.new
  erb :'auctions/new'
end

post '/auctions' do
  p params
end
