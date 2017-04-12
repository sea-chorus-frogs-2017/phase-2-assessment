get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.create(params[:user])
  session[:user_id] = @user.id
  redirect to '/'
end

get '/users/:id' do
  if session[:user_id]
    @user = User.find(params[:id])
    erb :'users/show'
  else
    redirect '/'
  end
end
