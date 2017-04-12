get '/users/new' do
  erb :"/users/new"
end

get "/users/:id" do
  user = User.find_by(id: params[:id])

end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session_login(@user)
    redirect '/'
  else
    erb :"/users/new"
  end
end
