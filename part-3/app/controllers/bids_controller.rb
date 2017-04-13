post '/bids' do
  @auction = Auction.find_by_id(params[:bid][:auction_id])
  @bid = Bid.new(params[:bid])
  user = User.find_by_id(session[:user_id])
  if @bid.save
    user.bids << @bid
    redirect to "/auctions/#{@auction.id}"
  else
    erb :'/auctions/show'
  end
end
