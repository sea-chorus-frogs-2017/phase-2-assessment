get '/auctions/new' do
  @auction
  erb :'auctions/new'
end

post '/auctions' do
  @auction = Auction.new(params[:auction])
  if @auction.save
    redirect to "/users/#{session[:user_id]}"
  else
    erb :'auctions/new'
  end
end

get '/auctions/:id/edit' do
  @auction = Auction.find_by_id(params[:id])
  erb :'auctions/edit'
end

put '/auctions/:id' do
  auction = Auction.find_by_id(params[:id])
  auction.update(params[:auction])
  redirect to "/users/#{session[:user_id]}"
end

delete '/auctions' do
  Auction.destroy(params[:auction][:id])
  redirect to "/users/#{session[:user_id]}"
end
