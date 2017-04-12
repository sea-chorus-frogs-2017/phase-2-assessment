get '/users/:user_id/items/new' do
  @user = User.find(params[:user_id])
  erb :'items/new'
end


