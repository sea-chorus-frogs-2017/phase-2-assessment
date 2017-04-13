post '/bids/new' do
  @bid = Bid.new(params[:bid])
  @item = Item.find_by(id: @bid.item_id)
  @users_bid = session_user.has_already_bid?(@item)
  if @bid.save && !@users_bid
    redirect "/items/#{@item.id}"
  else
    erb :"/items/show"
  end
end
