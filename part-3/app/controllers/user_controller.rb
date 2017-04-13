get '/users/new' do
  @user = User.new
  erb :'/users/new'
end

get '/users/login' do
    erb :'/users/_login_form', locals: {errors: false}
end

get '/users/logout' do
  session.delete(:username)
  redirect to '/'
end


get '/users/login' do
  @user = User.new
  erb :'/users/_login_form'
end

get '/users/:id' do
  @user = User.find_by(username: params[:id])
  erb :'users/show'
end

post '/users/login' do
  user = User.authenticate(params['user']['email'], params['user']['password'])
  if user
    session[:username] = user.username
    redirect to ('/')
  else
    erb :'users/_login_form', locals: {errors: true}
  end
end

post '/users' do
    @user = User.new(params['user'])
    if @user.save
      session[:username] = @user.username
      redirect to '/'
    else
      erb :'/users/new'
  end
end
