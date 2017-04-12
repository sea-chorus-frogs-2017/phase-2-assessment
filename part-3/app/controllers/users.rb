# Retrieves registration form page
get '/users/new' do
  @user = User.new
  erb :'users/new'
end

# Creates new user and redirects to homepage with user logged in
post '/users' do
  @user = User.create(params[:user])
  session['user_id'] = @user.id
  redirect '/'
end

#Note: This route contains a session user_id creation...
#      based on assessment specifications...
#      so I think there is also reasoning...
#      for this route to possibly be in sessions.

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end
