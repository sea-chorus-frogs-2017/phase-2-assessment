get '/items/new' do
  if session[:user_id]
    @user = User.find(session[:user_id]) if session[:user_id]
    erb :'/items/new'
  else
    redirect '/'
  end
end

post '/items' do
  @user = User.find(session[:user_id])
  @item = Item.new(params[:item])
  if @item.save
    @user.listed_items << @item
    redirect "/users/#{@user.id}"
  else
    erb :'/items/new'
  end
end

get '/users/:user_id/items/:item_id/edit' do
  @item = Item.find(params[:item_id])
  @user = User.find(params[:user_id])
  if session[:user_id] == @item.lister.id
    erb :'items/edit'
  else
    redirect '/'
  end
end

put '/users/:user_id/items/:item_id' do
  @user = User.find(params[:user_id])
  @item = Item.find(params[:item_id])
  if session[:user_id] == @item.lister.id
    @item.attributes = params[:item]
    if @item.save
      redirect "/users/#{@user.id}"
    else
      erb :'items/edit'
    end
  else
    redirect '/'
  end
end

delete '/users/:user_id/items/:item_id' do
  @item = Item.find(params[:item_id])
  @user = User.find(params[:user_id])
  if session[:user_id] == @item.lister.id
    @item.destroy
    redirect "/users/#{@user.id}"
  else
    redirect '/'
  end
end
