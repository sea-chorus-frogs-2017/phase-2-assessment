get '/users/new' do
  @user = User.new
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect to '/'
  else
    erb :'users/new'
  end
end

get '/users/:id' do
  if session[:user_id]
    @user_items = []
    @user = User.find(params[:id])
    if item = Item.find_by(user_id: params[:id])
    p item
     p @user_items.push(item)
    else
      @user_items = nil
    end
    erb :'users/show'
  else
    redirect '/'
  end
end
