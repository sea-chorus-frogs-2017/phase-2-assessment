get 'sessions/new' do
  erb 'sessions/new'
end

post '/sessions' do
  @user = User.find(params[:email])
  @user.authenticate(password_input)
end
