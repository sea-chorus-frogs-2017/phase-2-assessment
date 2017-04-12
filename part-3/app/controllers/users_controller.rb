post '/users' do
  @user = User.create({username: params[:username], email: params[:email], password: params[:password]})
  if @user
    @user.authenticate(params[:password])
    session[:id] = @user.id
    p @user
    @user
    erb :index
  else
    redirect :'users/new'
  end
end

get '/users/:id' do
  @user = User.find_by(id: session[:id])
  erb :'users/show'
end
