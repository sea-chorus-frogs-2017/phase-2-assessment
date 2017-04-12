module UserHelpers

  def get_username(id)
    user = User.find(id)
    user.username
  end

end

helpers UserHelpers
