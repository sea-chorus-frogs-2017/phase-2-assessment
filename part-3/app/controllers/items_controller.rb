get '/users/:user_id/items/new' do
  @user = User.find(params[:user_id])
  erb :'items/new'
end

post '/users/:user_id/items' do
  @user = User.find(params[:user_id])
  item = Item.create!(params['item'])
  @user.items << item
  redirect to "/user/#{@user.id}"
end

