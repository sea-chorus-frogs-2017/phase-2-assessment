get '/users/new' do
  if request.xhr?
    status 200
  else
    erb :'/users/_new_user_form'
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
  new_user = User.create(params['user'])
  if request.xhr?
    status 200
  else
    erb :'/index'
  end
end
