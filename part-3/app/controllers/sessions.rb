get '/sessions' do
  session.destroy
  redirect '/'

end

post '/sessions' do
  email = params[:user][:email]
  password = params[:user][:password]
  user = User.find_by(email: email)
  if user
    if user.authenticate(email, password)
      session[:user] = user
      redirect '/'
    else
      @error = 'Invalid password entered. Please try again.'
      erb :'login'
    end
  else
    @error = "Invalid email entered. Please try again."
    erb :'login'
  end
end
