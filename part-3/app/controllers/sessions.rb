delete "/sessions" do
  session.destroy
  redirect '/'
end

post '/sessions' do
  user = User.find_by(email: params[:user][:email])
  if user && user.authenticate(params[:user][:password])
    session_login(user)
    redirect "/"
  else
    @error = "Email and/or password are invalid"
    erb :"/index"
  end
end
