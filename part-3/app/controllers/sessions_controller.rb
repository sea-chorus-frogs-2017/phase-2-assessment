enable :sessions

post '/users' do
  @user = User.new(params[:user])
  if @user.save!
    session[:user_id] = @user.id
    redirect '/login'
  else
    @errors = @user.errors.full_messages
    redirect '/users/new'
  end
end
