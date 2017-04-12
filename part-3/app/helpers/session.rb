enable :sessions

helpers do
  def session_user
    User.find_by(id: session[:user_id])
  end

  def session_login(user)
    session[:user_id] = user.id
  end

  def session_logout
    session.destroy
  end
end
