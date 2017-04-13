get '/items/:id' do
  @item = Item.find(params[:id])
  erb :'/item/show'
end

get '/users/:user_id/items/:item_id/edit' do
  @user = User.find_by(username: params[:user_id])
  @item = Item.find(params[:item_id])
  erb :'/item/edit'
end

put '/users/:user_id/items/:id' do
  @item = Item.find(params[:id])
  @item.update(params[:item])
  redirect to ("/users/#{params[:user_id]}")
end

delete '/users/:user_id/items/:id' do
  @item = Item.find(params[:id])
  @item.destroy
  redirect to ("/users/#{params[:user_id]}")
end

get '/users/:id/items/new' do
  @item = Item.new
  erb :'/item/new'
end

post '/items' do
  @user = User.find_by(username: session[:username])
  @item = Item.new(params['item'])
  @item.user_id = @user.id
  if @item.save
    @user.items << @item
    redirect to "/users/#{session[:username]}"
  else
    erb :'/item/new'
  end
end
