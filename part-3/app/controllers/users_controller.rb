# registration
get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  user = User.new(params[:user])
  user.password = params[:password]
  user.save!
  p user
  redirect '/'
  # for later
  # redirect "/users/#{user.id}"
end

#login
get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
end
