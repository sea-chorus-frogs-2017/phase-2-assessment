require 'bcrypt'

get '/users/new' do
  erb :'user/new'
end

get '/login' do
  erb :'login'
end


