post '/bids' do
  @auction = Auction.find_by_id(params[:bid][:auction_id])
  @bid = Bid.new(params[:bid])
  if @bid.save
    redirect to "/auctions/#{@auction.id}"
  else
    erb :'/auctions/show'
  end
end
