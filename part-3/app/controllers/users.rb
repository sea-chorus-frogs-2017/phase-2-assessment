enable :sessions

post '/users' do
  user = User.new(params[:user])
  user.save
  if user.persisted?
    session[:user] = user
    redirect '/'
  end

end

get '/users/:id'
