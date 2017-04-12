get '/users/new' do
  if session[:user_id]
    redirect "users/#{session[:user_id]}"
  else
    erb :'users/new'
  end
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    redirect '/'
  else
    erb :'users/new'
  end
end

get '/users/:id' do
  if params[:id].to_i == session[:user_id]
    @user = User.find(params[:id])
    erb :'users/show'
  else
    redirect '/'
  end
end
