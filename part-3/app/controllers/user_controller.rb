enable :sessions

get '/users/new' do
  erb :'user/new'
end

get '/login' do
  erb :'login'
end

post '/login' do
  @user = User.authenticate(params['user']['username'], params['user']['password'])
  # had email in params instead of username, so it didn't authenticate
  if @user
    session[:user_id] = @user.id
    redirect '/auctions'
  else
    # flash[:error] = "You did something wrong it's your fault not mine!" /couldnt get this to work
    redirect '/login'
  end
end



