get 'sessions/new' do
  erb 'sessions/new'
end

post '/sessions' do
  @user = User.find(params[:email])

  if @user
    if @user.authenticate?(password_input)

  else

  end
end
