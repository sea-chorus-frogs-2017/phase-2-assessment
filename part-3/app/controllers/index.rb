get '/' do
  erb :index
end

get '/users/new' do
  erb :register
end

get '/users/login' do
  erb :login
end
