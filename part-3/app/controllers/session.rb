get '/session/new' do
  erb :'session/new'
end

post '/session' do
  user = User.authenticate(params[:user])
  if user
    session['user_id'] = user.id
    redirect '/'
  else
    redirect '/' #This should tell user login was wrong instead of just redirecting
  end

end

# Challenge has logout as a link, otherwise I would use a form and method delete
get '/session/delete' do
  session.clear
  redirect '/'
end
