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
