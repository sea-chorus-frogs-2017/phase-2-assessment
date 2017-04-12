get '/users/new' do
  erb :"/users/new"
end

post '/users' do
  @user = user.new(params[:user])
  if @user && @user.save

  end
  redirect '/'
end
