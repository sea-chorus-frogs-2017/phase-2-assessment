get '/auctions/new' do
  @auction = Auction.new
  erb :'auctions/new'
end
