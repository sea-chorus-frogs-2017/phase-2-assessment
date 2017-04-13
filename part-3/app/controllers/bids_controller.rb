post '/users/:user_id/items/:item_id/bids' do
  @user = User.find(params[:user_id])
  @item = Item.find(params[:item_id])
  @bid = Bid.new(params[:bid])
  if @bid.save
    @user.bids << @bid
    @item.bids << @bid
  end
  redirect "/items/#{@item.id}"
end
