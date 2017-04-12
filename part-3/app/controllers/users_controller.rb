get '/users/new' do
  @user
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect to '/'
  else
    p @user.errors.full_messages.flatten
    erb :'users/new'
  end
end
