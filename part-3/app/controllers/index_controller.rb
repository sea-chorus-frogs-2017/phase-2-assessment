get '/' do
  if session[:user_id]
    @user = session[:user_id]
    erb :'/users/index'
  else
    erb :'/users/index'
  end
end
