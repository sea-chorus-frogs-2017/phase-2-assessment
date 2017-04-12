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
    erb :'/users/_login_form'
  end
end

post '/users' do
    @user = User.new(params['user'])

    if @user.save
      erb :'/index'

    else
      erb :'/users/new'
  end
end
