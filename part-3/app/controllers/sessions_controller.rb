get '/sessions/login' do
  erb :'sessions/login'
end

post '/sessions' do
  @user = User.authenticate(params[:user])
  if @user
    session[:user_id] = @user.id
  end
  redirect to "/users/#{@user.id}"
end

get '/sessions/logout' do
  session.clear
  redirect '/'
end
