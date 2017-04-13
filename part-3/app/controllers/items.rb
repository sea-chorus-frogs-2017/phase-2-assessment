get "/items/new" do
  redirect "/" unless session_user
  erb :"/items/new"
end

post "/items" do
  p params
  @item = Item.new(params[:item])
  if @item.save
    redirect "/users/#{session_user.id}"
  else
    erb :"/items/new"
  end
end

get '/items/:id' do
  @item = Item.find_by(id: params[:id])
  @users_bid = session_user.has_already_bid?(@item) if session_user
  redirect "/" unless @item
  erb :"/items/show"
end

delete '/items/:id' do
  @item = Item.find(params[:id])
  redirect "/" unless @item && session_user_id == @item.user_id
  @item.destroy
  redirect "/users/#{session_user.id}"
end

put '/items/:id' do
  @item = Item.find(params[:id])
  redirect "/" unless @item && session_user_id == @item.user_id
  @item.assign_attributes(params[:item])
  if @item.save
    redirect "/users/#{session_user.id}"
  else
    status 400
    erb :"/items/update"
  end

end

get '/items/:id/edit' do
  @item = Item.find_by(id: params[:id])
  redirect "/" unless @item && session_user_id == @item.user_id
  erb :'/items/update'
end
