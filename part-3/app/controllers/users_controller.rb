get '/users/new' do
  @user
  erb :'users/new'
end

get '/users/:id' do
  @user = User.find_by_id(params[:id])
  # I am assuming a user can only view their own page
  if @user && (session[:user_id] == @user.id)
    erb :'users/show'
  else
    erb :'404'
  end
end
