# get registration form
get '/users/new' do
  erb :'/users/new'
end

# register
post '/users' do
  user = User.new(params[:user])
  user.password = params[:password]
  user.save!
  p user
  redirect '/'
  # for later
  # redirect "/users/#{user.id}"
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
end
