get '/auctions/new' do
  erb :'/users/auctions/new'
end

post '/auctions' do
@auction = Auction.new(params[:auction])
@user_id = session[:user][:id]
@auction.user_id = @user_id
@auction.save
if @auction.persisted?
  redirect "/users/#{session[:user].username}"
else
  @error = 'Please enter all information correctly.'
end

end
