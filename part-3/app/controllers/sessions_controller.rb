enable :sessions

post '/sessions/users/logout' do
  session.delete(:user_id)
  redirect '/'
end

post '/sessions/users' do
  @user = User.new(params[:user])
  if @user.save!
    session[:user_id] = @user.id
    redirect '/sessions/login'
  else
    @errors = @user.errors.full_messages
    redirect '/users/new'
  end
end

post '/sessions/login' do
  @user = User.authenticate(params['user']['username'], params['user']['password'])
  # had email in params instead of username, so it didn't authenticate
  if @user
    session[:user_id] = @user.id
    redirect '/auctions'
  else
    # flash[:error] = "You did something wrong it's your fault not mine!" /couldnt get this to work
    redirect '/sessions/login'
  end
end
