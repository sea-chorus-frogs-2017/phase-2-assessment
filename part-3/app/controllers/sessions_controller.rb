get '/login' do
  erb :'partials/_login'
end

post '/login' do
  @user = User.find_by(email: params[:email])
  if @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect '/'
  else
    redirect to '/login'
  end
end

post '/logout' do
  session[:user_id] = nil
  redirect '/'
end

delete "/" do
  session.destroy
  redirect "/"
end
