# Retrieves login form page
get '/session/new' do
  erb :'/session/new'
end

# Creates session['user_id']
post '/session' do
  user = User.authenticate(params[:user])
  if user
    session['user_id'] = user.id
    redirect '/'
  else
    @incorrect_login = "Incorrect Login/Password"
    erb :'/session/new'
  end
end

# Deletes session['user_id'] and retrieves homepage
get '/session/delete' do
  session.clear
  redirect '/'
end
# Note: Assessment shows logout as a link...
#       otherwise, I would make a form...
#       and use the delete method.
