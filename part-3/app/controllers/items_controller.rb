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
