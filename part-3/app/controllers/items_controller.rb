get '/items' do
  @items = Item.all
  erb :'items/index'
end

get '/items/:id' do
  @item = Item.find(params[:id])
  erb :'items/show'
end

get '/users/:user_id/items/new' do
  @user = User.find(params[:user_id])
  erb :'items/new'
end

post '/users/:user_id/items' do
  @user = User.find(params[:user_id])
  item = Item.create!(params['item'])
  @user.items << item
  redirect to "/users/#{@user.id}"
end

put '/users/:user_id/items/:id' do
  # This is the route to update the specific item
end

delete '/users/:user_id/items/:id' do
  # This is the route to delete the specific item
end
