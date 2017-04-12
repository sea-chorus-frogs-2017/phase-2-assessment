get '/users/:id/items/new' do
  @user = User.find(params[:id])
  erb :'items/new'
end

post '/users/:id/items' do
  params[:item][:user_id] = params[:id]
  Item.create(params[:item])
  redirect "/users/#{params[:id]}"
end

