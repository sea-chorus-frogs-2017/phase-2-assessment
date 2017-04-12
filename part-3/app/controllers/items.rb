get "/items/new" do
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

delete '/items/:id' do
  @item = Item.find(params[:id])
  @item.destroy
  redirect "/users/#{session_user.id}"
end

put '/items/:id' do
  @item = Item.find(params[:id])
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
  erb :'/items/update'
end
