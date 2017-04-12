get '/items/new' do
  if session[:user_id]
    @user = User.find(session[:user_id]) if session[:user_id]
    erb :'/items/new'
  else
    redirect '/'
  end
end

post '/items' do
  p params
end
