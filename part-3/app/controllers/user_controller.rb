enable :sessions

get '/users/new' do
  erb :'user/new'
end

get '/login' do
  erb :'login'
end

get '/users/:id' do
  @user = User.find(session[:user_id])
  erb :'user/show'
end



