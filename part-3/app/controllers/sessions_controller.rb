get '/sessions/new' do
  if session[:user_id]
    redirect "users/#{session[:user_id]}"
  else
    erb :'sessions/new'
  end
end

post '/sessions' do
  @user = User.find_by(email: params[:email])
  if @user
    if @user.authenticate?(params[:password])
      session[:user_id] = @user.id
      redirect "/users/#{@user.id}"
    else
      @error = "Password is incorrect"
      erb :'sessions/new'
    end
  else
    @error = "Username does not exist"
    erb :'sessions/new'
  end
end

delete '/sessions/:user_id' do
  if session[:user_id] == params[:user_id].to_i
    session.destroy
  end
  redirect '/'
end
