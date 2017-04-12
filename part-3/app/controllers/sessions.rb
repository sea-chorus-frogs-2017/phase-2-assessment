delete "/sessions" do
  session.destroy
  redirect '/'
end

post '/sessions' do
  user = User.find_by(username: params[:user][:username])
  if user && user.authenticate(params[:user][:password])
    session_login(user)
    redirect "/"
  else
    @error = "Username and/or password are invalid"
    erb :"/index"
  end
end
