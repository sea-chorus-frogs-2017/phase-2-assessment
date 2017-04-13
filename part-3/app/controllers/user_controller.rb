enable :sessions


get '/users/new' do
  erb :'user/new'
end

get '/login' do
  erb :'login'
end

post '/login' do
  @user = User.authenticate(params['user']['email'], params['user']['password'])
  if @user
    session[:user_id] = @user.user_id
    redirect '/auctions'
  else
    flash[:error] = "You did something wrong it's your fault not mine!"
    redirect '/login'
  end
end


