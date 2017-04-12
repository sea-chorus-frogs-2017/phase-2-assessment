enable :sessions

helpers do
  def session_user
    return nil unless session[:user_id]
    User.find_by(id: session[:user_id])
  end

  def session_login(user)
    session[:user_id] = user.id
  end

  def session_logout
    session.destroy
  end
end
