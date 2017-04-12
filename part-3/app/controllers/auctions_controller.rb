get '/auctions/new' do
  @auction = Auction.new
  erb :'auctions/new'
end

post '/auctions' do
  params[:auction][:user_id] = session[:user_id]
  @auction = Auction.new(params[:auction])
  if @auction.save
    redirect "/users/#{session[:user_id]}"
  else
    erb :"auctions/new"
  end
end

get '/auctions/:id/edit' do
  @auction = Auction.find(params[:id])
  erb :'auctions/edit'
end

put '/auctions/:id' do
  @auction = Auction.find(params[:id])
  @auction.update(params[:auction])
  if @auction.save
    redirect "/users/#{session[:user_id]}"
  else
    erb :"auctions/edit"
  end
end
