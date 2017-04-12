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
    @user = User.find(params[:id])
    erb :'users/show'
  else
    redirect '/'
  end
end
