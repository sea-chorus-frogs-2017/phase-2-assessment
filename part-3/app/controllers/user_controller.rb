get '/users/new' do
  @user = User.new
  if request.xhr?
    status 200
  else
    erb :'/users/new'
  end
end

get '/users/login' do
  if request.xhr?
    status 200
  else
    erb :'/users/_login_form', locals: {errors: false}
  end
end

get '/users/logout' do
  session.delete(:username)
  redirect to '/'
end


get '/users/login' do
  @user = User.new
  if request.xhr?
    status 200
  else
    erb :'/users/_login_form'
  end
end

get '/users/:id' do
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
