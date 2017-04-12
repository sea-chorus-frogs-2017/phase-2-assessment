get '/users/new' do
  @user = User.new
  erb :'users/new'
end

post '/users' do
  @user = User.create(params[:user])
  session['user_id'] = @user.id
  redirect '/'
end
