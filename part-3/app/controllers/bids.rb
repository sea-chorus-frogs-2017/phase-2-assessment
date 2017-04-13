post '/bids/new' do
  @bid = Bid.new(params[:bid])
  @item = Item.find_by(id: @bid.item_id)
  if @bid.save
    redirect "/items/#{@item.id}"
  else
    erb :"/items/show"
  end
end
