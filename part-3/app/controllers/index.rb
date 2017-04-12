get '/' do
  session.delete(:user_id)
  erb :'index'
end
