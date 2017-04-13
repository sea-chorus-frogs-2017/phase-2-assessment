# get login-form
get '/sessions' do
  erb :'/partials/_login'
end

# login
post '/sessions/new' do
  user = User.authenticate(params[:user])
  if user
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    redirect '/sessions'
  end
end

# log out
delete '/sessions' do
  session.clear
  redirect "/"
  # talked with Jordan, not sure why won't redirect to home
  # currently redirecting to login page
end
