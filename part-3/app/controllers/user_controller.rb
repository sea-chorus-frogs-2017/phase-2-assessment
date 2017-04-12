get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.create(params[:user])
  session[:user_id] = @user.id
  redirect to '/'
end
