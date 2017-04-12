get '/auctions/new' do
  if session[:user_id]
    @auction
    erb :'auctions/new'
  else
    erb :'404'
  end
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
  if @auction.auctioner == User.find_by_id(session[:user_id])
    erb :'auctions/edit'
  else
    erb :'404'
  end
end

get '/auctions/:id' do
  @auction = Auction.find_by_id(params[:id])
  if @auction
    erb :'auctions/show'
  else
    erb :'404'
  end
end

put '/auctions/:id' do
  auction = Auction.find_by_id(params[:id])
  auction.update(params[:auction])
  redirect to "/users/#{session[:user_id]}"
end

delete '/auctions' do
  auction = Auction.find_by_id(params[:auction][:id])
  if auction.auctioner == User.find_by_id(session[:user_id])
    Auction.destroy(params[:auction][:id])
    redirect to "/users/#{session[:user_id]}"
  else
    erb :'404'
  end
end
