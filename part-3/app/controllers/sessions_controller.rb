get '/sessions' do
  erb :'/partials/_login'
end

post '/sessions/new' do
  user = User.authenticate(params[:user])
  if user
    redirect "/users/#{user.id}"
  else
    redirect '/sessions'
  end
end

delete '/sessions' do
  session.clear
  redirect "/"
  # talked with Jordan, not sure why won't redirect to home
  # currently redirecting to login page
end
