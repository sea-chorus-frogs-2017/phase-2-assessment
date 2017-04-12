get '/session' do
  erb :'users/login'
end

post '/session' do
    @user = User.find_by(email: params[:email])
    if @user == nil
      erb :'users/login'
    else
      @user.authenticate(params[:password])
      session[:id] = @user.id
      @user
      erb :index
    end
end

post '/logout' do
  session[:id] = nil
  redirect '/'
end
