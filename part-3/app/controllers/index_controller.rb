get '/' do
  @items = Item.all
  if session[:user_id]
    @user = session[:user_id]
    erb :index
  else
    erb :index
  end
end
