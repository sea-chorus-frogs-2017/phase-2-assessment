get '/users/:user_id/items/new' do
  if session[:user_id] == params[:user_id]
    @user = User.find(params[:user_id])
    @user_id = params[:user_id]
    erb :'/items/new'
  else
    redirect '/'
  end
end

post '/users/:user_id/items' do
  new_item = Item.new(params["item"])
  new_item.user_id = params[:user_id]
  new_item.save!
  redirect to "/users/#{params[:user_id]}"
end

get '/users/:user_id/items/:id/edit' do
  if session[:user_id] == params[:user_id]
   @item = Item.find(params[:id])
    # @user = User.find(params[:user_id])
    erb :'/items/edit'
  else
    redirect "/"
  end
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

get '/users/:user_id/items/:id' do
  @user = User.find(params[:user_id])
  @item = Item.find(params[:id])
  erb :'/items/show'
end
