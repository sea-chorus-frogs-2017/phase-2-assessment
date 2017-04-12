get '/' do
  erb :index
end

get '/users/new' do
  erb :'users/new'
end
