get '/auctions/new' do
  if session[:user_id]
    @auction = Auction.new
    erb :'auctions/new'
  else
    redirect '/users/new'
  end
end

post '/auctions' do
  if session[:user_id]
    params[:auction][:user_id] = session[:user_id]
    @auction = Auction.new(params[:auction])
    if @auction.save
      redirect "/users/#{session[:user_id]}"
    else
      erb :"auctions/new"
    end
  else
    redirect '/users/new'
  end
end

get '/auctions/:id/edit' do
  @auction = Auction.find(params[:id])
  if session[:user_id] == @auction.user_id
    erb :'auctions/edit'
  else
    redirect '/users/new'
  end
end

put '/auctions/:id' do
  @auction = Auction.find(params[:id])
  if session[:user_id] == @auction.user_id
    @auction.update(params[:auction])
    if @auction.save
      redirect "/users/#{session[:user_id]}"
    else
      erb :"auctions/edit"
    end
  else
    redirect '/users/new'
  end
end

delete '/auctions/:id' do
  auction = Auction.find(params[:id])
  if session[:user_id] == auction.user_id
    auction.destroy

    redirect "/users/#{session[:user_id]}"
  else
    redirect '/users/new'
  end
end
