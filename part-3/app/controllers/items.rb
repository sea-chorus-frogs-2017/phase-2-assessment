get '/items' do
  @items = Item.all
  erb :'items/index'
end

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
    @incorrect_item = "Incorrectly filled out form"
    erb :'items/new'
  end
end

put '/users/:user_id/items/:id' do
  params[:item][:user_id] = params[:user_id]
  @item = Item.find(params[:id])
  if @item.update(params[:item])
    redirect "/users/#{params[:user_id]}"
  else
    @user = User.find(params[:id])
    @incorrect_item = "Incorrectly filled out form"
    erb :'items/edit'
  end
end

delete '/users/:user_id/items/:id' do
  item = Item.find(params[:id])
  item.destroy
  redirect "/users/#{params[:user_id]}"
end

get '/users/:user_id/items/:id/edit' do
  @user = User.find(params[:user_id])
  @item = Item.find(params[:id])
  erb :'items/edit'
end

