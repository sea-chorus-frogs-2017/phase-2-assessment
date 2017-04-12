get '/users/:id/items/new' do
  @user = User.find(params[:id])
  erb :'items/new'
end

post '/users/:id/items' do
  params[:item][:user_id] = params[:id]
  @item = Item.new(params[:item])
  if @item.save
    redirect "/users/#{params[:id]}"
  else
    @user = User.find(params[:id])
    @incorrect_item = "Incorrect Auction/Item"
    erb :'items/new'
  end
end

