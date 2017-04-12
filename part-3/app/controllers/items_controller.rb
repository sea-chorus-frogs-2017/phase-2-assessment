get '/users/:user_id/items/new' do
  @user_id = params[:user_id]
  erb :'/items/new'
end

post '/users/:user_id/items' do
  new_item = Item.new(params["item"])
  new_item.user_id = params[:user_id]
  new_item.save!
  redirect to "/users/#{params[:user_id]}"
end

get '/users/:user_id/items/:id/edit' do
  @item = Item.find(params[:id])
  @user = User.find(params[:user_id])
  erb :'/items/edit'
end

put '/users/:user_id/items/:id' do
  item = Item.find(params[:id])
  item.update(params["item"])
  redirect to "/users/#{params[:user_id]}"
end

delete '/users/:user_id/items/:id' do
  item = Item.find(params[:id])
  item.destroy
  redirect to "/users/#{params[:user_id]}"
end
